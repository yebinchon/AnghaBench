
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;


 int SQLITE_NOMEM ;
 int SQLITE_STATIC ;
 int SQLITE_UTF16NATIVE ;
 int SQLITE_UTF8 ;
 int sqlite3ApiExit (int ,int) ;
 int sqlite3ValueFree (int *) ;
 int * sqlite3ValueNew (int ) ;
 int sqlite3ValueSetStr (int *,int,void const*,int ,int ) ;
 char* sqlite3ValueText (int *,int ) ;
 int sqlite3_complete (char const*) ;
 int sqlite3_initialize () ;

int sqlite3_complete16(const void *zSql){
  sqlite3_value *pVal;
  char const *zSql8;
  int rc = SQLITE_NOMEM;


  rc = sqlite3_initialize();
  if( rc ) return rc;

  pVal = sqlite3ValueNew(0);
  sqlite3ValueSetStr(pVal, -1, zSql, SQLITE_UTF16NATIVE, SQLITE_STATIC);
  zSql8 = sqlite3ValueText(pVal, SQLITE_UTF8);
  if( zSql8 ){
    rc = sqlite3_complete(zSql8);
  }else{
    rc = SQLITE_NOMEM;
  }
  sqlite3ValueFree(pVal);
  return sqlite3ApiExit(0, rc);
}
