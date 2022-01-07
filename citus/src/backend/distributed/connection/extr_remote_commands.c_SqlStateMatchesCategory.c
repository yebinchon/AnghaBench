
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_TO_CATEGORY (int) ;
 int MAKE_SQLSTATE (char,char,char,char,char) ;

bool
SqlStateMatchesCategory(char *sqlStateString, int category)
{
 bool sqlStateMatchesCategory = 0;
 int sqlState = 0;
 int sqlStateCategory = 0;

 if (sqlStateString == ((void*)0))
 {
  return 0;
 }

 sqlState = MAKE_SQLSTATE(sqlStateString[0], sqlStateString[1], sqlStateString[2],
        sqlStateString[3], sqlStateString[4]);

 sqlStateCategory = ERRCODE_TO_CATEGORY(sqlState);
 if (sqlStateCategory == category)
 {
  sqlStateMatchesCategory = 1;
 }

 return sqlStateMatchesCategory;
}
