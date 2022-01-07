
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_4__ {int n; scalar_t__ z; } ;
struct TYPE_5__ {scalar_t__ pNewTable; int * db; TYPE_1__ sArg; } ;
typedef TYPE_2__ Parse ;


 int addModuleArgument (int *,scalar_t__,int ) ;
 int sqlite3DbStrNDup (int *,char const*,int) ;

__attribute__((used)) static void addArgumentToVtab(Parse *pParse){
  if( pParse->sArg.z && pParse->pNewTable ){
    const char *z = (const char*)pParse->sArg.z;
    int n = pParse->sArg.n;
    sqlite3 *db = pParse->db;
    addModuleArgument(db, pParse->pNewTable, sqlite3DbStrNDup(db, z, n));
  }
}
