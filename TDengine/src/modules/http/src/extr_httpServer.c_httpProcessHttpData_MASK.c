#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_4__* ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_19__ {scalar_t__ fd; int /*<<< orphan*/  accessTimes; int /*<<< orphan*/  state; int /*<<< orphan*/  ipstr; TYPE_3__* pThread; struct TYPE_19__* signature; } ;
struct TYPE_18__ {int numOfFds; TYPE_2__* pServer; int /*<<< orphan*/  (* processData ) (TYPE_4__*) ;int /*<<< orphan*/  pollFd; int /*<<< orphan*/  threadMutex; int /*<<< orphan*/  fdReady; } ;
struct TYPE_17__ {int /*<<< orphan*/  requestNum; int /*<<< orphan*/  online; } ;
typedef  TYPE_3__ HttpThread ;
typedef  TYPE_4__ HttpContext ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLPRI ; 
 int EPOLLRDHUP ; 
 int /*<<< orphan*/  HTTP_CONTEXT_STATE_READY ; 
 int HTTP_MAX_EVENTS ; 
 int /*<<< orphan*/  HTTP_SERVER_OFFLINE ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct epoll_event*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_4__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 

void FUNC17(void *param) {
  HttpThread  *pThread = (HttpThread *)param;
  HttpContext *pContext;
  int          fdNum;

  sigset_t set;
  FUNC15(&set);
  FUNC14(&set, SIGPIPE);
  FUNC13(SIG_SETMASK, &set, NULL);

  while (1) {
    FUNC11(&pThread->threadMutex);
    if (pThread->numOfFds < 1) {
      FUNC10(&pThread->fdReady, &pThread->threadMutex);
    }
    FUNC12(&pThread->threadMutex);

    struct epoll_event events[HTTP_MAX_EVENTS];
    //-1 means uncertainty, 0-nowait, 1-wait 1 ms, set it from -1 to 1
    fdNum = FUNC1(pThread->pollFd, events, HTTP_MAX_EVENTS, 1);
    if (fdNum <= 0) continue;

    for (int i = 0; i < fdNum; ++i) {
      pContext = events[i].data.ptr;
      if (pContext->signature != pContext || pContext->pThread != pThread || pContext->fd <= 0) {
        continue;
      }

      if (events[i].events & EPOLLPRI) {
        FUNC9("context:%p, fd:%d, ip:%s, state:%s, EPOLLPRI events occured, accessed:%d, close connect",
                  pContext, pContext->fd, pContext->ipstr, FUNC4(pContext->state), pContext->accessTimes);
        FUNC7(pThread, pContext);
        FUNC3(pThread, pContext);
        continue;
      }

      if (events[i].events & EPOLLRDHUP) {
        FUNC9("context:%p, fd:%d, ip:%s, state:%s, EPOLLRDHUP events occured, accessed:%d, close connect",
                  pContext, pContext->fd, pContext->ipstr, FUNC4(pContext->state), pContext->accessTimes);
        FUNC7(pThread, pContext);
        FUNC3(pThread, pContext);
        continue;
      }

      if (events[i].events & EPOLLERR) {
        FUNC9("context:%p, fd:%d, ip:%s, state:%s, EPOLLERR events occured, accessed:%d, close connect",
                  pContext, pContext->fd, pContext->ipstr, FUNC4(pContext->state), pContext->accessTimes);
        FUNC7(pThread, pContext);
        FUNC3(pThread, pContext);
        continue;
      }

      if (events[i].events & EPOLLHUP) {
        FUNC9("context:%p, fd:%d, ip:%s, state:%s, EPOLLHUP events occured, accessed:%d, close connect",
                  pContext, pContext->fd, pContext->ipstr, FUNC4(pContext->state), pContext->accessTimes);
        FUNC7(pThread, pContext);
        FUNC3(pThread, pContext);
        continue;
      }

      if (!FUNC2(pContext, HTTP_CONTEXT_STATE_READY, HTTP_CONTEXT_STATE_READY)) {
        FUNC9("context:%p, fd:%d, ip:%s, state:%s, not in ready state, ignore read events",
                pContext, pContext->fd, pContext->ipstr, FUNC4(pContext->state));
        continue;
      }

      if (!pContext->pThread->pServer->online) {
        FUNC9("context:%p, fd:%d, ip:%s, state:%s, server is not online, accessed:%d, close connect",
                  pContext, pContext->fd, pContext->ipstr, FUNC4(pContext->state), pContext->accessTimes);
        FUNC7(pThread, pContext);
        FUNC6(pContext);
        FUNC8(pContext, HTTP_SERVER_OFFLINE);
        FUNC3(pThread, pContext);
        continue;
      } else {
        if (FUNC5(pThread, pContext)) {
          (*(pThread->processData))(pContext);
          FUNC0(&pThread->pServer->requestNum, 1);
        }
      }
    }
  }
}