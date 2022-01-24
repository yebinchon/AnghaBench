#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_9__ {int /*<<< orphan*/  pnBytesFreed; } ;
typedef  TYPE_1__ sqlite3 ;
typedef  int /*<<< orphan*/  VTable ;
typedef  int /*<<< orphan*/  Mem ;
typedef  int /*<<< orphan*/  KeyInfo ;
typedef  int /*<<< orphan*/  FuncDef ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
#define  P4_DYNAMIC 138 
#define  P4_DYNBLOB 137 
#define  P4_EXPR 136 
#define  P4_FUNCCTX 135 
#define  P4_FUNCDEF 134 
#define  P4_INT64 133 
#define  P4_INTARRAY 132 
#define  P4_KEYINFO 131 
#define  P4_MEM 130 
#define  P4_REAL 129 
#define  P4_VTAB 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(sqlite3 *db, int p4type, void *p4){
  FUNC0( db );
  switch( p4type ){
    case P4_FUNCCTX: {
      FUNC2(db, (sqlite3_context*)p4);
      break;
    }
    case P4_REAL:
    case P4_INT64:
    case P4_DYNAMIC:
    case P4_DYNBLOB:
    case P4_INTARRAY: {
      FUNC4(db, p4);
      break;
    }
    case P4_KEYINFO: {
      if( db->pnBytesFreed==0 ) FUNC6((KeyInfo*)p4);
      break;
    }
#ifdef SQLITE_ENABLE_CURSOR_HINTS
    case P4_EXPR: {
      sqlite3ExprDelete(db, (Expr*)p4);
      break;
    }
#endif
    case P4_FUNCDEF: {
      FUNC1(db, (FuncDef*)p4);
      break;
    }
    case P4_MEM: {
      if( db->pnBytesFreed==0 ){
        FUNC7((sqlite3_value*)p4);
      }else{
        FUNC3(db, (Mem*)p4);
      }
      break;
    }
    case P4_VTAB : {
      if( db->pnBytesFreed==0 ) FUNC8((VTable *)p4);
      break;
    }
  }
}