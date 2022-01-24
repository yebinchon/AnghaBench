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
struct TYPE_7__ {TYPE_2__* ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;
typedef  int int32_t ;
struct TYPE_10__ {scalar_t__ msgLen; } ;
struct TYPE_9__ {int numOfFds; int /*<<< orphan*/  shandle; int /*<<< orphan*/ * (* processData ) (void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ;int /*<<< orphan*/  label; int /*<<< orphan*/  pollFd; int /*<<< orphan*/  mutex; int /*<<< orphan*/  fdReady; } ;
struct TYPE_8__ {int /*<<< orphan*/ * thandle; int /*<<< orphan*/  port; int /*<<< orphan*/  ip; int /*<<< orphan*/  fd; } ;
typedef  TYPE_2__ STcpFd ;
typedef  TYPE_3__ STcpClient ;
typedef  TYPE_4__ STaosHeader ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int FUNC0 (int /*<<< orphan*/ ,struct epoll_event*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int maxTcpEvents ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (void*,size_t) ; 
 int /*<<< orphan*/ * FUNC7 (void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 

__attribute__((used)) static void *FUNC13(void *param) {
  STcpClient *       pTcp = (STcpClient *)param;
  int                i, fdNum;
  STcpFd *           pFdObj;
  struct epoll_event events[maxTcpEvents];

  while (1) {
    FUNC4(&pTcp->mutex);
    if (pTcp->numOfFds < 1) FUNC3(&pTcp->fdReady, &pTcp->mutex);
    FUNC5(&pTcp->mutex);

    fdNum = FUNC0(pTcp->pollFd, events, maxTcpEvents, -1);
    if (fdNum < 0) continue;

    for (i = 0; i < fdNum; ++i) {
      pFdObj = events[i].data.ptr;

      if (events[i].events & EPOLLERR) {
        FUNC9("%s TCP error happened on FD\n", pTcp->label);
        FUNC10(pFdObj);
        continue;
      }

      if (events[i].events & EPOLLHUP) {
        FUNC9("%s TCP FD hang up\n", pTcp->label);
        FUNC10(pFdObj);
        continue;
      }

      void *buffer = FUNC2(1024);
      if (NULL == buffer) {
        FUNC9("%s TCP malloc(size:1024) fail\n", pTcp->label);
        FUNC10(pFdObj);
        continue;
      }

      int headLen = FUNC11(pFdObj->fd, buffer, sizeof(STaosHeader));
      if (headLen != sizeof(STaosHeader)) {
        FUNC8("%s read error, headLen:%d", pTcp->label, headLen);
        FUNC12(buffer);
        FUNC10(pFdObj);
        continue;
      }

      int dataLen = (int32_t)FUNC1((uint32_t)((STaosHeader *)buffer)->msgLen);
      if (dataLen > 1024) {
        void *b = FUNC6(buffer, (size_t)dataLen);
        if (NULL == b) {
          FUNC9("%s TCP malloc(size:%d) fail\n", pTcp->label, dataLen);
          FUNC12(buffer);
          FUNC10(pFdObj);
          continue;
        }
        buffer = b;
      }

      int leftLen = dataLen - headLen;
      int retLen = FUNC11(pFdObj->fd, buffer + headLen, leftLen);

      // tTrace("%s TCP data is received, ip:%s port:%u len:%d", pTcp->label, pFdObj->ipstr, pFdObj->port, dataLen);

      if (leftLen != retLen) {
        FUNC8("%s read error, leftLen:%d retLen:%d", pTcp->label, leftLen, retLen);
        FUNC12(buffer);
        FUNC10(pFdObj);
        continue;
      }

      pFdObj->thandle =
          (*(pTcp->processData))(buffer, dataLen, pFdObj->ip, pFdObj->port, pTcp->shandle, pFdObj->thandle, pFdObj);

      if (pFdObj->thandle == NULL) FUNC10(pFdObj);
    }
  }

  return NULL;
}