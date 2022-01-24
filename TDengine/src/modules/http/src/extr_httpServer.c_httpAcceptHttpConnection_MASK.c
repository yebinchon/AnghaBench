#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;
struct TYPE_9__ {TYPE_4__* ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  clientAddr ;
struct TYPE_12__ {int fd; struct TYPE_12__* prev; struct TYPE_12__* next; TYPE_2__* pThread; int /*<<< orphan*/  ipstr; } ;
struct TYPE_11__ {int online; int numOfThreads; TYPE_2__* pThreads; int /*<<< orphan*/  label; int /*<<< orphan*/  serverPort; int /*<<< orphan*/  serverIp; } ;
struct TYPE_10__ {int /*<<< orphan*/  threadMutex; int /*<<< orphan*/  fdReady; scalar_t__ numOfFds; TYPE_4__* pHead; int /*<<< orphan*/  pServer; int /*<<< orphan*/  label; int /*<<< orphan*/  pollFd; } ;
typedef  TYPE_2__ HttpThread ;
typedef  TYPE_3__ HttpServer ;
typedef  TYPE_4__ HttpContext ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLIN ; 
 int EPOLLPRI ; 
 int EPOLLRDHUP ; 
 int EPOLLWAKEUP ; 
 int /*<<< orphan*/  EPOLL_CTL_ADD ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct epoll_event*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_4__*,int,char*,int,int /*<<< orphan*/ ,scalar_t__,int) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int,int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int tsHttpCacheSessions ; 

void FUNC22(void *arg) {
  int                connFd = -1;
  struct sockaddr_in clientAddr;
  int                sockFd;
  int                threadId = 0;
  HttpThread *       pThread;
  HttpServer *       pServer;
  HttpContext *      pContext;
  int                totalFds;

  pServer = (HttpServer *)arg;

  sigset_t set;
  FUNC14(&set);
  FUNC13(&set, SIGPIPE);
  FUNC12(SIG_SETMASK, &set, NULL);

  sockFd = FUNC19(pServer->serverIp, pServer->serverPort);

  if (sockFd < 0) {
    FUNC4("http server:%s, failed to open http socket, ip:%s:%u", pServer->label, pServer->serverIp,
              pServer->serverPort);
    return;
  } else {
    FUNC6("http service init success at ip:%s:%u", pServer->serverIp, pServer->serverPort);
    pServer->online = true;
  }

  while (1) {
    socklen_t addrlen = sizeof(clientAddr);
    connFd = (int)FUNC0(sockFd, (struct sockaddr *)&clientAddr, &addrlen);

    if (connFd < 3) {
      FUNC4("http server:%s, accept connect failure, errno:%d, reason:%s", pServer->label, errno, FUNC16(errno));
      continue;
    }

    totalFds = 1;
    for (int i = 0; i < pServer->numOfThreads; ++i) {
      totalFds += pServer->pThreads[i].numOfFds;
    }

    if (totalFds > tsHttpCacheSessions * 20) {
      FUNC4("fd:%d, ip:%s:%u, totalFds:%d larger than httpCacheSessions:%d*20, refuse connection",
              connFd, FUNC8(clientAddr.sin_addr), FUNC2(clientAddr.sin_port), totalFds, tsHttpCacheSessions);
      FUNC17(connFd);
      continue;
    }

    FUNC18(connFd);
    FUNC20(connFd, 1);

    // pick up the thread to handle this connection
    pThread = pServer->pThreads + threadId;

    pContext = FUNC3(pServer);
    if (pContext == NULL) {
      FUNC4("fd:%d, ip:%s:%u, no enough resource to allocate http context", connFd, FUNC8(clientAddr.sin_addr),
                FUNC2(clientAddr.sin_port));
      FUNC17(connFd);
      continue;
    }

    FUNC7("context:%p, fd:%d, ip:%s:%u, thread:%s, numOfFds:%d, totalFds:%d, accept a new connection",
            pContext, connFd, FUNC8(clientAddr.sin_addr), FUNC2(clientAddr.sin_port), pThread->label,
            pThread->numOfFds, totalFds);

    pContext->fd = connFd;
    FUNC15(pContext->ipstr, "%s:%d", FUNC8(clientAddr.sin_addr), FUNC2(clientAddr.sin_port));
    pContext->pThread = pThread;

    struct epoll_event event;
    event.events = EPOLLIN | EPOLLPRI | EPOLLWAKEUP | EPOLLERR | EPOLLHUP | EPOLLRDHUP;

    event.data.ptr = pContext;
    if (FUNC1(pThread->pollFd, EPOLL_CTL_ADD, connFd, &event) < 0) {
      FUNC4("context:%p, fd:%d, ip:%s:%u, thread:%s, failed to add http fd for epoll, error:%s",
                pContext, connFd, FUNC8(clientAddr.sin_addr), FUNC2(clientAddr.sin_port), pThread->label,
                FUNC16(errno));
      FUNC5(pThread->pServer, pContext);
      FUNC21(connFd);
      continue;
    }

    // notify the data process, add into the FdObj list
    FUNC10(&(pThread->threadMutex));

    pContext->next = pThread->pHead;

    if (pThread->pHead) (pThread->pHead)->prev = pContext;

    pThread->pHead = pContext;

    pThread->numOfFds++;
    FUNC9(&pThread->fdReady);

    FUNC11(&(pThread->threadMutex));

    // pick up next thread for next connection
    threadId++;
    threadId = threadId % pServer->numOfThreads;
  }
}