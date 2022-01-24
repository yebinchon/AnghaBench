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
struct TYPE_6__ {int numOfThreads; int /*<<< orphan*/  label; TYPE_1__* pThreads; int /*<<< orphan*/  thread; } ;
struct TYPE_5__ {int /*<<< orphan*/  threadMutex; int /*<<< orphan*/  fdReady; int /*<<< orphan*/  thread; scalar_t__ pHead; int /*<<< orphan*/  pollFd; } ;
typedef  TYPE_1__ HttpThread ;
typedef  TYPE_2__ HttpServer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void FUNC8(HttpServer *pServer) {
  int         i;
  HttpThread *pThread;

  if (pServer == NULL) return;

  FUNC2(pServer->thread);
  FUNC4(pServer->thread, NULL);

  for (i = 0; i < pServer->numOfThreads; ++i) {
    pThread = pServer->pThreads + i;
    FUNC6(pThread->pollFd);

    while (pThread->pHead) {
      FUNC0(pThread->pHead);
    }

    FUNC2(pThread->thread);
    FUNC4(pThread->thread, NULL);
    FUNC3(&(pThread->fdReady));
    FUNC5(&(pThread->threadMutex));
  }

  FUNC7(pServer->pThreads);
  FUNC1("http server:%s is cleaned up", pServer->label);
}