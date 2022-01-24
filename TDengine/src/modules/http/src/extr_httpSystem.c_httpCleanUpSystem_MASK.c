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
struct TYPE_5__ {int /*<<< orphan*/  serverMutex; int /*<<< orphan*/ * pContextPool; int /*<<< orphan*/ * timerHandle; int /*<<< orphan*/ * expireTimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* httpServer ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void FUNC9() {
  FUNC1("http service cleanup");
  FUNC3();
#if 0
  if (httpServer == NULL) {
    return;
  }

  if (httpServer->expireTimer != NULL) {
    taosTmrStopA(&(httpServer->expireTimer));
  }

  if (httpServer->timerHandle != NULL) {
    taosTmrCleanUp(httpServer->timerHandle);
    httpServer->timerHandle = NULL;
  }

  httpCleanUpConnect(httpServer);
  httpRemoveAllSessions(httpServer);

  if (httpServer->pContextPool != NULL) {
    taosMemPoolCleanUp(httpServer->pContextPool);
    httpServer->pContextPool = NULL;
  }

  pthread_mutex_destroy(&httpServer->serverMutex);

  tfree(httpServer);
#endif
}