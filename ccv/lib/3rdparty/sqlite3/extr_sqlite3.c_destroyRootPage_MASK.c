#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_12__ {TYPE_2__* db; } ;
struct TYPE_11__ {TYPE_1__* aDb; } ;
struct TYPE_10__ {int /*<<< orphan*/  zDbSName; } ;
typedef  TYPE_3__ Parse ;

/* Variables and functions */
 int /*<<< orphan*/  MASTER_NAME ; 
 int /*<<< orphan*/  OP_Destroy ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC7(Parse *pParse, int iTable, int iDb){
  Vdbe *v = FUNC2(pParse);
  int r1 = FUNC1(pParse);
  FUNC0( iTable>1 );
  FUNC6(v, OP_Destroy, iTable, r1, iDb);
  FUNC3(pParse);
#ifndef SQLITE_OMIT_AUTOVACUUM
  /* OP_Destroy stores an in integer r1. If this integer
  ** is non-zero, then it is the root page number of a table moved to
  ** location iTable. The following code modifies the sqlite_master table to
  ** reflect this.
  **
  ** The "#NNN" in the SQL is a special constant that means whatever value
  ** is in register NNN.  See grammar rules associated with the TK_REGISTER
  ** token for additional information.
  */
  FUNC4(pParse, 
     "UPDATE %Q.%s SET rootpage=%d WHERE #%d AND rootpage=#%d",
     pParse->db->aDb[iDb].zDbSName, MASTER_NAME, iTable, r1, r1);
#endif
  FUNC5(pParse, r1);
}