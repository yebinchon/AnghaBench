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
struct TYPE_4__ {int /*<<< orphan*/ * timerHandle; int /*<<< orphan*/ * pContextPool; int /*<<< orphan*/  cacheContext; } ;
typedef  int /*<<< orphan*/  HttpContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__* httpServer ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int,int,int,char*) ; 
 int tsHttpCacheSessions ; 

int FUNC7() {
  FUNC4("starting to initialize http service ...");

  if (httpServer == NULL) {
    FUNC0("http server is null");
    FUNC3();
  }

  if (httpServer->pContextPool == NULL) {
    httpServer->pContextPool = FUNC5(httpServer->cacheContext, sizeof(HttpContext));
  }
  if (httpServer->pContextPool == NULL) {
    FUNC0("http init context pool failed");
    return -1;
  }

  if (httpServer->timerHandle == NULL) {
    httpServer->timerHandle = FUNC6(tsHttpCacheSessions * 20 + 100, 1000, 60000, "http");
  }
  if (httpServer->timerHandle == NULL) {
    FUNC0("http init timer failed");
    return -1;
  }

  if (!FUNC1(httpServer)) {
    FUNC0("http init session failed");
    return -1;
  }

  if (!FUNC2(httpServer)) {
    FUNC0("http init server failed");
    return -1;
  }

  return 0;
}