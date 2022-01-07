
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Parse ;


 int sqlite3ErrorMsg (int *,char*,char const*) ;
 scalar_t__ sqlite3StrNICmp (char const*,char*,int) ;

__attribute__((used)) static int isSystemTable(Parse *pParse, const char *zName){
  if( 0==sqlite3StrNICmp(zName, "sqlite_", 7) ){
    sqlite3ErrorMsg(pParse, "table %s may not be altered", zName);
    return 1;
  }
  return 0;
}
