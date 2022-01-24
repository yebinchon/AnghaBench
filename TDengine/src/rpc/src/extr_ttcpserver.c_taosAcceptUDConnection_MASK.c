#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_4__* ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;
struct TYPE_10__ {int fd; struct TYPE_10__* prev; struct TYPE_10__* next; TYPE_2__* pThreadObj; } ;
struct TYPE_9__ {int numOfThreads; int /*<<< orphan*/  label; TYPE_2__* pThreadObj; int /*<<< orphan*/  port; int /*<<< orphan*/  ip; } ;
struct TYPE_8__ {int /*<<< orphan*/  numOfFds; int /*<<< orphan*/  threadId; int /*<<< orphan*/  threadMutex; int /*<<< orphan*/  fdReady; TYPE_4__* pHead; int /*<<< orphan*/  pollFd; } ;
typedef  TYPE_2__ SThreadObj ;
typedef  TYPE_3__ SServerObj ;
typedef  TYPE_4__ SFdObj ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLPRI ; 
 int EPOLLWAKEUP ; 
 int /*<<< orphan*/  EPOLL_CTL_ADD ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct epoll_event*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 

void FUNC13(void *arg) {
  int                connFd = -1;
  int                sockFd;
  int                threadId = 0;
  SThreadObj *       pThreadObj;
  SServerObj *       pServerObj;
  SFdObj *           pFdObj;
  struct epoll_event event;

  pServerObj = (SServerObj *)arg;
  sockFd = FUNC11(pServerObj->ip, pServerObj->port);

  if (sockFd < 0) {
    FUNC9("%s failed to open UD socket, ip:%s, port:%u", pServerObj->label, pServerObj->ip, pServerObj->port);
    return;
  } else {
    FUNC10("%s UD server is ready, ip:%s, port:%u", pServerObj->label, pServerObj->ip, pServerObj->port);
  }

  while (1) {
    connFd = FUNC0(sockFd, NULL, NULL);

    if (connFd < 0) {
      FUNC9("%s UD accept failure, errno:%d, reason:%s", pServerObj->label, errno, FUNC8(errno));
      continue;
    }

    // pick up the thread to handle this connection
    pThreadObj = pServerObj->pThreadObj + threadId;

    pFdObj = (SFdObj *)FUNC3(sizeof(SFdObj));
    if (pFdObj == NULL) {
      FUNC9("%s no enough resource to allocate TCP FD IDs", pServerObj->label);
      FUNC1(connFd);
      continue;
    }

    FUNC4(pFdObj, 0, sizeof(SFdObj));
    pFdObj->fd = connFd;
    pFdObj->pThreadObj = pThreadObj;

    event.events = EPOLLIN | EPOLLPRI | EPOLLWAKEUP;
    event.data.ptr = pFdObj;
    if (FUNC2(pThreadObj->pollFd, EPOLL_CTL_ADD, connFd, &event) < 0) {
      FUNC9("%s failed to add UD FD for epoll, error:%s", pServerObj->label, FUNC8(errno));
      FUNC12(pFdObj);
      FUNC1(connFd);
      continue;
    }

    // notify the data process, add into the FdObj list
    FUNC6(&(pThreadObj->threadMutex));

    pFdObj->next = pThreadObj->pHead;

    if (pThreadObj->pHead) (pThreadObj->pHead)->prev = pFdObj;

    pThreadObj->pHead = pFdObj;

    pThreadObj->numOfFds++;
    FUNC5(&pThreadObj->fdReady);

    FUNC7(&(pThreadObj->threadMutex));

    FUNC10("%s UD thread:%d, a new connection, numOfFds:%d", pServerObj->label, pThreadObj->threadId,
           pThreadObj->numOfFds);

    // pick up next thread for next connection
    threadId++;
    threadId = threadId % pServerObj->numOfThreads;
  }
}