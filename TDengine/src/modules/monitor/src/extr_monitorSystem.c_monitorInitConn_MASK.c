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
struct TYPE_3__ {scalar_t__* privateIpStr; int /*<<< orphan*/ * conn; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MONITOR_STATE_INITIALIZING ; 
 int TSDB_IPv4ADDR_LEN ; 
 TYPE_1__* monitor ; 
 int /*<<< orphan*/  monitorInitConnCb ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  tsInternalIp ; 
 int /*<<< orphan*/  tsInternalPass ; 
 int /*<<< orphan*/  tsPrivateIp ; 

void FUNC4(void *para, void *unused) {
  FUNC1("starting to initialize monitor service ..");
  monitor->state = MONITOR_STATE_INITIALIZING;

  if (monitor->privateIpStr[0] == 0) {
#ifdef CLUSTER
    strcpy(monitor->privateIpStr, tsPrivateIp);
#else
    FUNC2(monitor->privateIpStr, tsInternalIp);
#endif
    for (int i = 0; i < TSDB_IPv4ADDR_LEN; ++i) {
      if (monitor->privateIpStr[i] == '.') {
        monitor->privateIpStr[i] = '_';
      }
    }
  }

  if (monitor->conn == NULL) {
    FUNC3(NULL, "monitor", tsInternalPass, "", 0, monitorInitConnCb, monitor, &(monitor->conn));
  } else {
    FUNC0();
  }
}