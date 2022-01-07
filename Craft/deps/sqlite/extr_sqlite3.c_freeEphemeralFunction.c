
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ FuncDef ;


 scalar_t__ ALWAYS (TYPE_1__*) ;
 int SQLITE_FUNC_EPHEM ;
 int sqlite3DbFree (int *,TYPE_1__*) ;

__attribute__((used)) static void freeEphemeralFunction(sqlite3 *db, FuncDef *pDef){
  if( ALWAYS(pDef) && (pDef->flags & SQLITE_FUNC_EPHEM)!=0 ){
    sqlite3DbFree(db, pDef);
  }
}
