
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_4__ {int nResColumn; TYPE_2__* db; int * pResultSet; } ;
typedef TYPE_1__ Vdbe ;
struct TYPE_5__ {int mutex; } ;
typedef int Mem ;


 int SQLITE_RANGE ;
 int assert (TYPE_2__*) ;
 scalar_t__ columnNullValue () ;
 int sqlite3Error (TYPE_2__*,int ) ;
 int sqlite3_mutex_enter (int ) ;

__attribute__((used)) static Mem *columnMem(sqlite3_stmt *pStmt, int i){
  Vdbe *pVm;
  Mem *pOut;

  pVm = (Vdbe *)pStmt;
  if( pVm==0 ) return (Mem*)columnNullValue();
  assert( pVm->db );
  sqlite3_mutex_enter(pVm->db->mutex);
  if( pVm->pResultSet!=0 && i<pVm->nResColumn && i>=0 ){
    pOut = &pVm->pResultSet[i];
  }else{
    sqlite3Error(pVm->db, SQLITE_RANGE);
    pOut = (Mem*)columnNullValue();
  }
  return pOut;
}
