#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_7__ {int* pnBytesFreed; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_8__ {scalar_t__* aCounter; TYPE_1__* db; } ;
typedef  TYPE_2__ Vdbe ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  SQLITE_MISUSE_BKPT ; 
 int SQLITE_STMTSTATUS_MEMUSED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(sqlite3_stmt *pStmt, int op, int resetFlag){
  Vdbe *pVdbe = (Vdbe*)pStmt;
  u32 v;
#ifdef SQLITE_ENABLE_API_ARMOR
  if( !pStmt 
   || (op!=SQLITE_STMTSTATUS_MEMUSED && (op<0||op>=ArraySize(pVdbe->aCounter)))
  ){
    (void)SQLITE_MISUSE_BKPT;
    return 0;
  }
#endif
  if( op==SQLITE_STMTSTATUS_MEMUSED ){
    sqlite3 *db = pVdbe->db;
    FUNC3(db->mutex);
    v = 0;
    db->pnBytesFreed = (int*)&v;
    FUNC2(db, pVdbe);
    FUNC1(db, pVdbe);
    db->pnBytesFreed = 0;
    FUNC4(db->mutex);
  }else{
    v = pVdbe->aCounter[op];
    if( resetFlag ) pVdbe->aCounter[op] = 0;
  }
  return (int)v;
}