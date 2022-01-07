
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int sqlite3_stmt ;
struct TYPE_7__ {int* pnBytesFreed; int mutex; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_8__ {scalar_t__* aCounter; TYPE_1__* db; } ;
typedef TYPE_2__ Vdbe ;


 int ArraySize (scalar_t__*) ;
 int SQLITE_MISUSE_BKPT ;
 int SQLITE_STMTSTATUS_MEMUSED ;
 int sqlite3DbFree (TYPE_1__*,TYPE_2__*) ;
 int sqlite3VdbeClearObject (TYPE_1__*,TYPE_2__*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

int sqlite3_stmt_status(sqlite3_stmt *pStmt, int op, int resetFlag){
  Vdbe *pVdbe = (Vdbe*)pStmt;
  u32 v;
  if( op==SQLITE_STMTSTATUS_MEMUSED ){
    sqlite3 *db = pVdbe->db;
    sqlite3_mutex_enter(db->mutex);
    v = 0;
    db->pnBytesFreed = (int*)&v;
    sqlite3VdbeClearObject(db, pVdbe);
    sqlite3DbFree(db, pVdbe);
    db->pnBytesFreed = 0;
    sqlite3_mutex_leave(db->mutex);
  }else{
    v = pVdbe->aCounter[op];
    if( resetFlag ) pVdbe->aCounter[op] = 0;
  }
  return (int)v;
}
