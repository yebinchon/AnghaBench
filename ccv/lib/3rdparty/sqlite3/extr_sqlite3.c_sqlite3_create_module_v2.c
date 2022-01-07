
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_module ;
typedef int sqlite3 ;


 int SQLITE_MISUSE_BKPT ;
 int createModule (int *,char const*,int const*,void*,void (*) (void*)) ;
 int sqlite3SafetyCheckOk (int *) ;

int sqlite3_create_module_v2(
  sqlite3 *db,
  const char *zName,
  const sqlite3_module *pModule,
  void *pAux,
  void (*xDestroy)(void *)
){



  return createModule(db, zName, pModule, pAux, xDestroy);
}
