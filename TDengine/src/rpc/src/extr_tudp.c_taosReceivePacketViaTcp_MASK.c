#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
struct TYPE_14__ {int dataLen; TYPE_1__* pSet; int /*<<< orphan*/  pTimer; TYPE_2__* pConn; int /*<<< orphan*/  port; int /*<<< orphan*/  ip; int /*<<< orphan*/  data; } ;
struct TYPE_13__ {int /*<<< orphan*/  port; int /*<<< orphan*/  handle; } ;
struct TYPE_12__ {int /*<<< orphan*/  tranId; int /*<<< orphan*/  destId; int /*<<< orphan*/  sourceId; scalar_t__ content; } ;
struct TYPE_11__ {TYPE_1__* pSet; } ;
struct TYPE_10__ {int /*<<< orphan*/  label; int /*<<< orphan*/  tmrCtrl; } ;
typedef  TYPE_1__ SUdpConnSet ;
typedef  TYPE_2__ SUdpConn ;
typedef  TYPE_3__ STaosHeader ;
typedef  TYPE_4__ SPacketInfo ;
typedef  TYPE_5__ SMonitor ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_CREATE_DETACHED ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  taosProcessMonitorTimer ; 
 int /*<<< orphan*/  taosReadTcpData ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(uint32_t ip, STaosHeader *pHead, SUdpConn *pConn) {
  SUdpConnSet *  pSet = pConn->pSet;
  SPacketInfo *  pInfo = (SPacketInfo *)pHead->content;
  int            code = 0;
  pthread_attr_t thattr;
  pthread_t      thread;

  FUNC7("%s receive packet via TCP, handle:0x%x, source:0x%08x dest:0x%08x tranId:%d", pSet->label, pInfo->handle,
         pHead->sourceId, pHead->destId, pHead->tranId);

  SMonitor *pMonitor = (SMonitor *)FUNC0(1, sizeof(SMonitor));
  pMonitor->dataLen = sizeof(STaosHeader) + sizeof(SPacketInfo);
  FUNC1(pMonitor->data, pHead, (size_t)pMonitor->dataLen);
  pMonitor->pSet = pSet;
  pMonitor->ip = ip;
  pMonitor->port = pInfo->port;
  pMonitor->pConn = pConn;
  FUNC8(taosProcessMonitorTimer, 0, pMonitor, pSet->tmrCtrl, &pMonitor->pTimer);

  FUNC3(&thattr);
  FUNC4(&thattr, PTHREAD_CREATE_DETACHED);
  code = FUNC5(&(thread), &thattr, taosReadTcpData, (void *)pMonitor);
  if (code < 0) {
    FUNC7("%s failed to create thread to read tcp data, reason:%s", pSet->label, FUNC6(errno));
    pMonitor->pSet = NULL;
  }

  FUNC2(&thattr);
  return code;
}