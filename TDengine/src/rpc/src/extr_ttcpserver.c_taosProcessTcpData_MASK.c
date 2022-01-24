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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {TYPE_4__* ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_10__ {int /*<<< orphan*/ * thandle; scalar_t__ port; int /*<<< orphan*/  ip; int /*<<< orphan*/  fd; } ;
struct TYPE_9__ {scalar_t__ msgLen; } ;
struct TYPE_8__ {int numOfFds; int /*<<< orphan*/  shandle; int /*<<< orphan*/ * (* processData ) (void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*) ;int /*<<< orphan*/  label; int /*<<< orphan*/  threadId; int /*<<< orphan*/  pollFd; int /*<<< orphan*/  threadMutex; int /*<<< orphan*/  fdReady; } ;
typedef  TYPE_2__ SThreadObj ;
typedef  TYPE_3__ STaosHeader ;
typedef  TYPE_4__ SFdObj ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int FUNC0 (int /*<<< orphan*/ ,struct epoll_event*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int maxEvents ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (void*,size_t) ; 
 int /*<<< orphan*/ * FUNC7 (void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 

__attribute__((used)) static void FUNC13(void *param) {
  SThreadObj *       pThreadObj;
  int                i, fdNum;
  SFdObj *           pFdObj;
  struct epoll_event events[maxEvents];

  pThreadObj = (SThreadObj *)param;

  while (1) {
    FUNC4(&pThreadObj->threadMutex);
    if (pThreadObj->numOfFds < 1) {
      FUNC3(&pThreadObj->fdReady, &pThreadObj->threadMutex);
    }
    FUNC5(&pThreadObj->threadMutex);

    fdNum = FUNC0(pThreadObj->pollFd, events, maxEvents, -1);
    if (fdNum < 0) continue;

    for (i = 0; i < fdNum; ++i) {
      pFdObj = events[i].data.ptr;

      if (events[i].events & EPOLLERR) {
        FUNC9("%s TCP thread:%d, error happened on FD", pThreadObj->label, pThreadObj->threadId);
        FUNC10(pFdObj);
        continue;
      }

      if (events[i].events & EPOLLHUP) {
        FUNC9("%s TCP thread:%d, FD hang up", pThreadObj->label, pThreadObj->threadId);
        FUNC10(pFdObj);
        continue;
      }

      void *buffer = FUNC2(1024);
      int   headLen = FUNC11(pFdObj->fd, buffer, sizeof(STaosHeader));
      if (headLen != sizeof(STaosHeader)) {
        FUNC8("%s read error, headLen:%d", pThreadObj->label, headLen);
        FUNC10(pFdObj);
        FUNC12(buffer);
        continue;
      }

      int dataLen = (int32_t)FUNC1((uint32_t)((STaosHeader *)buffer)->msgLen);
      if (dataLen > 1024) buffer = FUNC6(buffer, (size_t)dataLen);

      int leftLen = dataLen - headLen;
      int retLen = FUNC11(pFdObj->fd, buffer + headLen, leftLen);

      // tTrace("%s TCP data is received, ip:%s port:%u len:%d",
      // pThreadObj->label, pFdObj->ipstr, pFdObj->port, dataLen);

      if (leftLen != retLen) {
        FUNC8("%s read error, leftLen:%d retLen:%d", pThreadObj->label, leftLen, retLen);
        FUNC10(pFdObj);
        FUNC12(buffer);
        continue;
      }

      pFdObj->thandle = (*(pThreadObj->processData))(buffer, dataLen, pFdObj->ip, (int16_t)pFdObj->port,
                                                     pThreadObj->shandle, pFdObj->thandle, pFdObj);

      if (pFdObj->thandle == NULL) FUNC10(pFdObj);
    }
  }
}