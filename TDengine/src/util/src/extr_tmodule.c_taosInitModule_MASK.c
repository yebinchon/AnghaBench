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
typedef  int /*<<< orphan*/  pthread_attr_t ;
typedef  int /*<<< orphan*/  msg_t ;
struct TYPE_4__ {char* name; int (* init ) () ;int /*<<< orphan*/  thread; scalar_t__ emptySlot; scalar_t__ fullSlot; scalar_t__ queueSize; int /*<<< orphan*/ * queue; int /*<<< orphan*/  fullSem; int /*<<< orphan*/  emptySem; int /*<<< orphan*/  stmMutex; int /*<<< orphan*/  queueMutex; } ;
typedef  TYPE_1__ module_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_CREATE_JOINABLE ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  taosProcessQueue ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC11(module_t *pMod) {
  pthread_attr_t attr;

  if (FUNC6(&pMod->queueMutex, NULL) < 0) {
    FUNC2("ERROR: init %s queueMutex failed, reason:%s\n", pMod->name, FUNC7(errno));
    FUNC9(pMod);
    return -1;
  }

  if (FUNC6(&pMod->stmMutex, NULL) < 0) {
    FUNC2("ERROR: init %s stmMutex failed, reason:%s\n", pMod->name, FUNC7(errno));
    FUNC9(pMod);
    return -1;
  }

  if (FUNC10(&pMod->emptySem, 0, (unsigned int)pMod->queueSize) != 0) {
    FUNC2("ERROR: init %s empty semaphore failed, reason:%s\n", pMod->name, FUNC7(errno));
    FUNC9(pMod);
    return -1;
  }

  if (FUNC10(&pMod->fullSem, 0, 0) != 0) {
    FUNC2("ERROR: init %s full semaphore failed, reason:%s\n", pMod->name, FUNC7(errno));
    FUNC9(pMod);
    return -1;
  }

  if ((pMod->queue = (msg_t *)FUNC0((size_t)pMod->queueSize * sizeof(msg_t))) == NULL) {
    FUNC2("ERROR: %s no enough memory, reason:%s\n", pMod->name, FUNC7(errno));
    FUNC9(pMod);
    return -1;
  }

  FUNC1(pMod->queue, 0, (size_t)pMod->queueSize * sizeof(msg_t));
  pMod->fullSlot = 0;
  pMod->emptySlot = 0;

  FUNC3(&attr);
  FUNC4(&attr, PTHREAD_CREATE_JOINABLE);

  if (FUNC5(&pMod->thread, &attr, taosProcessQueue, (void *)pMod) != 0) {
    FUNC2("ERROR: %s failed to create thread, reason:%s\n", pMod->name, FUNC7(errno));
    FUNC9(pMod);
    return -1;
  }

  if (pMod->init) return (*(pMod->init))();

  return 0;
}