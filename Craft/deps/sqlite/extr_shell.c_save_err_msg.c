
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int memcpy (char*,int ,int) ;
 int sqlite3_errmsg (int *) ;
 char* sqlite3_malloc (int) ;
 int strlen30 (int ) ;

__attribute__((used)) static char *save_err_msg(
  sqlite3 *db
){
  int nErrMsg = 1+strlen30(sqlite3_errmsg(db));
  char *zErrMsg = sqlite3_malloc(nErrMsg);
  if( zErrMsg ){
    memcpy(zErrMsg, sqlite3_errmsg(db), nErrMsg);
  }
  return zErrMsg;
}
