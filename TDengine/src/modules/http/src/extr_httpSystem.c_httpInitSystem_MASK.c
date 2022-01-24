#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  serverMutex; int /*<<< orphan*/  processData; int /*<<< orphan*/  numOfThreads; int /*<<< orphan*/  sessionExpire; int /*<<< orphan*/  cacheContext; int /*<<< orphan*/  serverPort; int /*<<< orphan*/  serverIp; int /*<<< orphan*/  label; } ;
typedef  TYPE_1__ HttpServer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  httpProcessData ; 
 TYPE_1__* httpServer ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  tsHttpCacheSessions ; 
 scalar_t__ tsHttpEnableRecordSql ; 
 char* tsHttpIp ; 
 int /*<<< orphan*/  tsHttpMaxThreads ; 
 int /*<<< orphan*/  tsHttpPort ; 
 int /*<<< orphan*/  tsHttpSessionExpire ; 
 int tsNumOfLogLines ; 

int FUNC11() {
  FUNC9();

  httpServer = (HttpServer *)FUNC2(sizeof(HttpServer));
  FUNC3(httpServer, 0, sizeof(HttpServer));

  FUNC7(httpServer->label, "rest");
  FUNC7(httpServer->serverIp, tsHttpIp);
  httpServer->serverPort = tsHttpPort;
  httpServer->cacheContext = tsHttpCacheSessions;
  httpServer->sessionExpire = tsHttpSessionExpire;
  httpServer->numOfThreads = tsHttpMaxThreads;
  httpServer->processData = httpProcessData;

  FUNC5(&httpServer->serverMutex, NULL);

  if (tsHttpEnableRecordSql != 0) {
    FUNC8(tsNumOfLogLines / 10, 1);
  }
  FUNC6(httpServer);
  FUNC0(httpServer);
  FUNC1(httpServer);
  FUNC10(httpServer);
  FUNC4(httpServer);

  return 0;
}