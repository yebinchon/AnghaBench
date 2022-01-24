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
struct TYPE_4__ {int numOfThreads; int /*<<< orphan*/  label; struct TYPE_4__* pThreadObj; int /*<<< orphan*/  threadMutex; int /*<<< orphan*/  fdReady; int /*<<< orphan*/  thread; int /*<<< orphan*/  pollFd; scalar_t__ pHead; } ;
typedef  TYPE_1__ SThreadObj ;
typedef  TYPE_1__ SServerObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void FUNC8(void *handle) {
  int         i;
  SThreadObj *pThreadObj;
  SServerObj *pServerObj = (SServerObj *)handle;

  if (pServerObj == NULL) return;

  FUNC1(pServerObj->thread);
  FUNC3(pServerObj->thread, NULL);

  for (i = 0; i < pServerObj->numOfThreads; ++i) {
    pThreadObj = pServerObj->pThreadObj + i;

    while (pThreadObj->pHead) {
      FUNC6(pThreadObj->pHead);
      pThreadObj->pHead = pThreadObj->pHead;
    }

    FUNC0(pThreadObj->pollFd);
    FUNC1(pThreadObj->thread);
    FUNC3(pThreadObj->thread, NULL);
    FUNC2(&(pThreadObj->fdReady));
    FUNC4(&(pThreadObj->threadMutex));
  }

  FUNC7(pServerObj->pThreadObj);
  FUNC5("TCP:%s, TCP server is cleaned up", pServerObj->label);

  FUNC7(pServerObj);
}