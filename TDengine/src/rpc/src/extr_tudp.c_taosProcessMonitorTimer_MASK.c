#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* pTimer; int /*<<< orphan*/  ip; scalar_t__ dataLen; int /*<<< orphan*/  data; TYPE_1__* pSet; } ;
struct TYPE_5__ {int /*<<< orphan*/  tmrCtrl; int /*<<< orphan*/  shandle; int /*<<< orphan*/  (* fp ) (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  label; } ;
typedef  TYPE_1__ SUdpConnSet ;
typedef  TYPE_2__ SMonitor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void (*) (void*,void*),int,TYPE_2__*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC6 (void**) ; 

void FUNC7(void *param, void *tmrId) {
  SMonitor *pMonitor = (SMonitor *)param;
  if (pMonitor->pTimer != tmrId) return;

  SUdpConnSet *pSet = pMonitor->pSet;
  pMonitor->pTimer = NULL;

  if (pSet) {
    char *data = FUNC1((size_t)pMonitor->dataLen);
    FUNC2(data, pMonitor->data, (size_t)pMonitor->dataLen);

    FUNC4("%s monitor timer is expired, update the link status", pSet->label);
    (*pSet->fp)(data, pMonitor->dataLen, pMonitor->ip, 0, pSet->shandle, NULL, NULL);
    FUNC5(taosProcessMonitorTimer, 200, pMonitor, pSet->tmrCtrl, &pMonitor->pTimer);
  } else {
    FUNC6(&pMonitor->pTimer);
    FUNC0(pMonitor);
  }
}