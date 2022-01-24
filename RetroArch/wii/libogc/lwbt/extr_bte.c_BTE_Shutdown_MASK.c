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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {scalar_t__ hci_inited; scalar_t__ hci_cmddone; int /*<<< orphan*/ * usrdata; int /*<<< orphan*/ * cb; int /*<<< orphan*/  timer_svc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __bte_shutdown_finished ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__ btstate ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9()
{
	u32 level;

	if(btstate.hci_inited==0) return;

	FUNC0("BTE_Shutdown()\n");

	FUNC2(level);
	FUNC1(btstate.timer_svc);
	btstate.cb = NULL;
	btstate.usrdata = NULL;
	btstate.hci_cmddone = 0;
	FUNC5(&btstate);
	FUNC6(__bte_shutdown_finished);
	FUNC7();
	FUNC4(&btstate);
	FUNC3(level);

	FUNC8();
}