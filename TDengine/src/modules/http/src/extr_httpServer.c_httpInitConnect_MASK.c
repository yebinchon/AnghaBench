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
typedef  int /*<<< orphan*/  pthread_attr_t ;
struct TYPE_6__ {int numOfThreads; char* label; int /*<<< orphan*/  serverPort; int /*<<< orphan*/  serverIp; int /*<<< orphan*/  thread; int /*<<< orphan*/  processData; TYPE_1__* pThreads; } ;
struct TYPE_5__ {char* label; int threadId; scalar_t__ pollFd; int /*<<< orphan*/  thread; int /*<<< orphan*/  fdReady; int /*<<< orphan*/  threadMutex; int /*<<< orphan*/  processData; TYPE_2__* pServer; } ;
typedef  TYPE_1__ HttpThread ;
typedef  TYPE_2__ HttpServer ;

/* Variables and functions */
 int /*<<< orphan*/  HTTP_MAX_EVENTS ; 
 int /*<<< orphan*/  PTHREAD_CREATE_JOINABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ httpAcceptHttpConnection ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ httpProcessHttpData ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,void*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

bool FUNC13(HttpServer *pServer) {
  int            i;
  pthread_attr_t thattr;
  HttpThread *   pThread;

  pServer->pThreads = (HttpThread *)FUNC3(sizeof(HttpThread) * (size_t)pServer->numOfThreads);
  if (pServer->pThreads == NULL) {
    FUNC1("init error no enough memory");
    return false;
  }
  FUNC4(pServer->pThreads, 0, sizeof(HttpThread) * (size_t)pServer->numOfThreads);

  FUNC6(&thattr);
  FUNC7(&thattr, PTHREAD_CREATE_JOINABLE);
  pThread = pServer->pThreads;
  for (i = 0; i < pServer->numOfThreads; ++i) {
    FUNC11(pThread->label, "%s%d", pServer->label, i);
    pThread->pServer = pServer;
    pThread->processData = pServer->processData;
    pThread->threadId = i;

    if (FUNC10(&(pThread->threadMutex), NULL) < 0) {
      FUNC1("http thread:%s, failed to init HTTP process data mutex, reason:%s", pThread->label, FUNC12(errno));
      return false;
    }

    if (FUNC8(&(pThread->fdReady), NULL) != 0) {
      FUNC1("http thread:%s, init HTTP condition variable failed, reason:%s", pThread->label, FUNC12(errno));
      return false;
    }

    pThread->pollFd = FUNC0(HTTP_MAX_EVENTS);  // size does not matter
    if (pThread->pollFd < 0) {
      FUNC1("http thread:%s, failed to create HTTP epoll", pThread->label);
      return false;
    }

    if (FUNC9(&(pThread->thread), &thattr, (void *)httpProcessHttpData, (void *)(pThread)) != 0) {
      FUNC1("http thread:%s, failed to create HTTP process data thread, reason:%s",
                pThread->label, FUNC12(errno));
      return false;
    }

    FUNC2("http thread:%p:%s, initialized", pThread, pThread->label);
    pThread++;
  }

  if (FUNC9(&(pServer->thread), &thattr, (void *)httpAcceptHttpConnection, (void *)(pServer)) != 0) {
    FUNC1("http server:%s, failed to create Http accept thread, reason:%s", pServer->label, FUNC12(errno));
    return false;
  }

  FUNC5(&thattr);

  FUNC2("http server:%s, initialized, ip:%s:%u, numOfThreads:%d", pServer->label, pServer->serverIp,
            pServer->serverPort, pServer->numOfThreads);
  return true;
}