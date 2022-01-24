#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
struct TYPE_5__ {int queueSize; char* label; int /*<<< orphan*/  numOfThreads; int /*<<< orphan*/ * qthread; scalar_t__ emptySlot; scalar_t__ fullSlot; struct TYPE_5__* queue; int /*<<< orphan*/  fullSem; int /*<<< orphan*/  emptySem; int /*<<< orphan*/  queueMutex; } ;
typedef  TYPE_1__ SSchedQueue ;
typedef  TYPE_1__ SSchedMsg ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_CREATE_JOINABLE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  taosProcessSchedQueue ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

void *FUNC12(int queueSize, int numOfThreads, const char *label) {
  pthread_attr_t attr;
  SSchedQueue *  pSched = (SSchedQueue *)FUNC0(sizeof(SSchedQueue));
  if (pSched == NULL) {
    FUNC2("%s: no enough memory for pSched, reason: %s", label, FUNC8(errno));
    goto _error;
  }

  FUNC1(pSched, 0, sizeof(SSchedQueue));
  pSched->queueSize = queueSize;
  FUNC9(pSched->label, label, sizeof(pSched->label)); // fix buffer overflow
  pSched->label[sizeof(pSched->label)-1] = '\0';

  if (FUNC7(&pSched->queueMutex, NULL) < 0) {
    FUNC2("init %s:queueMutex failed, reason:%s", pSched->label, FUNC8(errno));
    goto _error;
  }

  if (FUNC11(&pSched->emptySem, 0, (unsigned int)pSched->queueSize) != 0) {
    FUNC2("init %s:empty semaphore failed, reason:%s", pSched->label, FUNC8(errno));
    goto _error;
  }

  if (FUNC11(&pSched->fullSem, 0, 0) != 0) {
    FUNC2("init %s:full semaphore failed, reason:%s", pSched->label, FUNC8(errno));
    goto _error;
  }

  if ((pSched->queue = (SSchedMsg *)FUNC0((size_t)pSched->queueSize * sizeof(SSchedMsg))) == NULL) {
    FUNC2("%s: no enough memory for queue, reason:%s", pSched->label, FUNC8(errno));
    goto _error;
  }

  FUNC1(pSched->queue, 0, (size_t)pSched->queueSize * sizeof(SSchedMsg));
  pSched->fullSlot = 0;
  pSched->emptySlot = 0;

  pSched->qthread = FUNC0(sizeof(pthread_t) * (size_t)numOfThreads);
  if (pSched->qthread == NULL) {
    FUNC2("%s: no enough memory for qthread, reason: %s", pSched->label, FUNC8(errno));
    goto _error;
  }

  FUNC4(&attr);
  FUNC5(&attr, PTHREAD_CREATE_JOINABLE);

  for (int i = 0; i < numOfThreads; ++i) {
    if (FUNC6(pSched->qthread + i, &attr, taosProcessSchedQueue, (void *)pSched) != 0) {
      FUNC2("%s: failed to create rpc thread, reason:%s", pSched->label, FUNC8(errno));
      goto _error;
    }
    ++pSched->numOfThreads;
  }

  FUNC3("%s scheduler is initialized, numOfThreads:%d", pSched->label, pSched->numOfThreads);

  return (void *)pSched;

_error:
  FUNC10(pSched);
  return NULL;
}