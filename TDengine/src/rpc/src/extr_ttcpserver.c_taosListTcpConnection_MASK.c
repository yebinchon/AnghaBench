#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* ipstr; struct TYPE_6__* next; int /*<<< orphan*/  port; } ;
struct TYPE_5__ {int numOfThreads; char* label; TYPE_1__* pThreadObj; } ;
struct TYPE_4__ {int threadId; int numOfFds; TYPE_3__* pHead; } ;
typedef  TYPE_1__ SThreadObj ;
typedef  TYPE_2__ SServerObj ;
typedef  TYPE_3__ SFdObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,...) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int,int) ; 

void FUNC3(void *handle, char *buffer) {
  SServerObj *pServerObj;
  SThreadObj *pThreadObj;
  SFdObj *    pFdObj;
  int         i, numOfFds, numOfConns;
  char *      msg;

  pServerObj = (SServerObj *)handle;
  buffer[0] = 0;
  msg = buffer;
  numOfConns = 0;

  pThreadObj = pServerObj->pThreadObj;

  for (i = 0; i < pServerObj->numOfThreads; ++i) {
    numOfFds = 0;
    FUNC0(msg, "TCP:%s Thread:%d number of connections:%d\n", pServerObj->label, pThreadObj->threadId,
            pThreadObj->numOfFds);
    msg = msg + FUNC1(msg);
    pFdObj = pThreadObj->pHead;
    while (pFdObj) {
      FUNC0("   ip:%s port:%u\n", pFdObj->ipstr, pFdObj->port);
      msg = msg + FUNC1(msg);
      numOfFds++;
      numOfConns++;
      pFdObj = pFdObj->next;
    }

    if (numOfFds != pThreadObj->numOfFds)
      FUNC2("TCP:%s thread:%d BIG error, numOfFds:%d actual numOfFds:%d", pServerObj->label, pThreadObj->threadId,
             pThreadObj->numOfFds, numOfFds);

    pThreadObj++;
  }

  FUNC0(msg, "TCP:%s total connections:%d\n", pServerObj->label, numOfConns);

  return;
}