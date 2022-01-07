
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_int64 ;


 scalar_t__ SQLITE_OK ;
 int SQLITE_UTF8 ;
 scalar_t__ sqlite3Atoi64 (char const*,int *,int ,int ) ;
 int sqlite3Strlen30 (char const*) ;
 char* sqlite3_uri_parameter (char const*,char const*) ;

sqlite3_int64 sqlite3_uri_int64(
  const char *zFilename,
  const char *zParam,
  sqlite3_int64 bDflt
){
  const char *z = sqlite3_uri_parameter(zFilename, zParam);
  sqlite3_int64 v;
  if( z && sqlite3Atoi64(z, &v, sqlite3Strlen30(z), SQLITE_UTF8)==SQLITE_OK ){
    bDflt = v;
  }
  return bDflt;
}
