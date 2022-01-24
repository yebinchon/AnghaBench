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
struct TYPE_4__ {int /*<<< orphan*/  diskTimer; } ;
typedef  TYPE_1__ MonitorConn ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_INTERVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* monitor ; 
 int /*<<< orphan*/  monitorCheckDiskUsage ; 
 int /*<<< orphan*/  monitorStartSystem ; 
 int /*<<< orphan*/  monitorStopSystem ; 
 int /*<<< orphan*/  startMonitor ; 
 int /*<<< orphan*/  stopMonitor ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tscTmr ; 

int FUNC3() {
  monitor = (MonitorConn *)FUNC0(sizeof(MonitorConn));
  FUNC1(monitor, 0, sizeof(MonitorConn));
  FUNC2(monitorCheckDiskUsage, CHECK_INTERVAL, NULL, tscTmr, &monitor->diskTimer);

  startMonitor = monitorStartSystem;
  stopMonitor  = monitorStopSystem;
  return 0;
}