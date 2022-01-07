
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int sqlite3DbFree (int *,char*) ;
 char* sqlite3MPrintf (int *,char*,char*,...) ;

__attribute__((used)) static char *whereOrName(sqlite3 *db, char *zWhere, char *zConstant){
  char *zNew;
  if( !zWhere ){
    zNew = sqlite3MPrintf(db, "name=%Q", zConstant);
  }else{
    zNew = sqlite3MPrintf(db, "%s OR name=%Q", zWhere, zConstant);
    sqlite3DbFree(db, zWhere);
  }
  return zNew;
}
