#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/  i64 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_4__ {int nMem; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ Parse ;

/* Variables and functions */
 int /*<<< orphan*/  COLNAME_NAME ; 
 int /*<<< orphan*/  OP_Int64 ; 
 int /*<<< orphan*/  OP_ResultRow ; 
 int /*<<< orphan*/  P4_INT64 ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC7(Parse *pParse, const char *zLabel, i64 value){
  Vdbe *v = FUNC2(pParse);
  int mem = ++pParse->nMem;
  i64 *pI64 = FUNC1(pParse->db, sizeof(value));
  if( pI64 ){
    FUNC0(pI64, &value, sizeof(value));
  }
  FUNC4(v, OP_Int64, 0, mem, 0, (char*)pI64, P4_INT64);
  FUNC6(v, 1);
  FUNC5(v, 0, COLNAME_NAME, zLabel, SQLITE_STATIC);
  FUNC3(v, OP_ResultRow, mem, 1);
}