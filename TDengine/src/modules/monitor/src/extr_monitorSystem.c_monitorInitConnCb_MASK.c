#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * conn; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  TAOS_RES ;

/* Variables and functions */
 int /*<<< orphan*/  MONITOR_STATE_UN_INIT ; 
 TYPE_1__* monitor ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void *param, TAOS_RES *result, int code) {
  if (code < 0) {
    FUNC0("monitor:%p, connect to database failed, code:%d", monitor->conn, code);
    FUNC4(monitor->conn);
    monitor->conn = NULL;
    monitor->state = MONITOR_STATE_UN_INIT;
    FUNC2();
    return;
  }

  FUNC3("monitor:%p, connect to database success, code:%d", monitor->conn, code);
  FUNC1();
}