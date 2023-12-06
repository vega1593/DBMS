
select * from help;
select * from redo_log;

-- SQLÀÇ ÁÖ¼® : ÇÑÁÙ ÁÖ¼® 
/*
        ¿©·¯ÁÙ ÁÖ¼® 
*/

/*
    ÀÏ¹Ý °èÁ¤À» »ý¼ºÈÄ ÀÏ¹Ý °èÁ¤À¸·Î Á¢¼Ó : °èÁ¤ »ý¼º, ±ÇÇÑ ºÎ¿©
*/
-- System °èÁ¤À¸·Î Á¢¼ÓÇÑ Äõ¸®Ã¢¿¡¼­¸¸ °èÁ¤À» »ý¼º ÇÒ ¼ö ÀÖ´Ù

-- 1. hr °èÁ¤À» »ý¼º : Oracle 12 ¹öÁ¯ ÀÌ»ó ºÎÅÍ °èÁ¤ »ý¼º½Ã c##°èÁ¤¸í 
    -- °èÁ¤ : hr ¾ÏÈ£ : 1234 
create user C##HR4 identified by 1234
default tablespace USERS
temporary tablespace TEMP;

-- 2. °èÁ¤¿¡ ±ÇÇÑÀ» ºÎ¿©ÇÏ±â : connect : Á¢¼Ó,  resource : °´Ã¼ »ý¼º, ¼öÁ¤, »èÁ¦
grant resource, connect to C##HR4;

-- 3. Å×ÀÌºí ½ºÆäÀÌ½º¿¡¼­ »ç¿ë·® ÇÒ´ç.
alter user C##HR4 quota unlimited on USERS;

-- 4. °èÁ¤ »èÁ¦ 
drop user C##HR3 CASCADE

