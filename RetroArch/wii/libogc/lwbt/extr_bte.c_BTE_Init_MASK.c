#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct bt_state {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  timer_svc; int /*<<< orphan*/  hci_cmdq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct timespec*,struct timespec*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acl_conn_complete ; 
 int /*<<< orphan*/  acl_wlp_completed ; 
 int /*<<< orphan*/  bt_alarmhandler ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__ btstate ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 

void FUNC16()
{
	u32 level;
	struct timespec tb;

	FUNC0("BTE_Init()\n");

	FUNC13(&btstate,0,sizeof(struct bt_state));

	FUNC8();
	FUNC11();
	FUNC14();

	FUNC1(&btstate.hci_cmdq);
	FUNC2(&btstate.timer_svc);

	FUNC4(level);
	FUNC6();
	FUNC9();
	FUNC12();
	FUNC15();

	FUNC10(acl_wlp_completed);
	FUNC7(acl_conn_complete);
	FUNC5(level);

	tb.tv_sec = 1;
	tb.tv_nsec = 0;
	FUNC3(btstate.timer_svc,&tb,&tb,bt_alarmhandler, NULL);
}