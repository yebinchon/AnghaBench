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
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_2__ {scalar_t__ state; char* sql; char* privateIpStr; int /*<<< orphan*/ * timer; int /*<<< orphan*/  conn; } ;

/* Variables and functions */
 scalar_t__ MONITOR_STATE_INITIALIZED ; 
 scalar_t__ MONITOR_STATE_STOPPED ; 
 int /*<<< orphan*/  SQL_LENGTH ; 
 int /*<<< orphan*/  dnodeMontiorInsertSysCallback ; 
 TYPE_1__* monitor ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/ * monitorCountReqFp ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (char*,int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 char* tsMonitorDbName ; 

void FUNC11() {
  if (monitor->state != MONITOR_STATE_INITIALIZED) {
    return;
  }

  if (monitorCountReqFp == NULL) {
    return;
  }

  int64_t ts = FUNC9();
  char *  sql = monitor->sql;
  int pos = FUNC8(sql, SQL_LENGTH, "insert into %s.dn_%s values(%ld", tsMonitorDbName, monitor->privateIpStr, ts);

  pos += FUNC1(sql + pos);
  pos += FUNC4(sql + pos);
  pos += FUNC2(sql + pos);
  pos += FUNC0(sql + pos);
  pos += FUNC3(sql + pos);
  pos += FUNC5(sql + pos);

  FUNC7("monitor:%p, save system info, sql:%s", monitor->conn, sql);
  FUNC10(monitor->conn, sql, dnodeMontiorInsertSysCallback, "log");

  if (monitor->timer != NULL && monitor->state != MONITOR_STATE_STOPPED) {
    FUNC6();
  }
}