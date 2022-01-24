#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int TSDB_MOD_MGMT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ mgmtDnodeConns ; 
 int /*<<< orphan*/ * mgmtQhandle ; 
 scalar_t__ mgmtShellConns ; 
 int /*<<< orphan*/  mgmtStatisticTimer ; 
 int /*<<< orphan*/ * mgmtTmr ; 
 int /*<<< orphan*/ * mgmtTranQhandle ; 
 int /*<<< orphan*/ * pShellConn ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int tsModuleStatus ; 

void FUNC16() {
  if (tsModuleStatus & (1 << TSDB_MOD_MGMT)) {
    FUNC0("mgmt is running, clean it up");
    FUNC14(&mgmtStatisticTimer);
    FUNC11();
    FUNC10();
    FUNC3();
    FUNC7();
    FUNC5();
    FUNC9();
    FUNC2();
    FUNC4();
    FUNC8();
    FUNC1();
    FUNC13(mgmtTmr);
    FUNC12(mgmtQhandle);
    FUNC12(mgmtTranQhandle);
  } else {
    FUNC6();
  }

  mgmtTmr = NULL;
  mgmtQhandle = NULL;
  mgmtShellConns = 0;
  mgmtDnodeConns = 0;
  FUNC15(TSDB_MOD_MGMT);
  pShellConn = NULL;

  FUNC0("mgmt is cleaned up");
}