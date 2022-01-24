#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int parsed; int /*<<< orphan*/  state; int /*<<< orphan*/  ipstr; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  HttpThread ;
typedef  TYPE_1__ HttpContext ;

/* Variables and functions */
 int /*<<< orphan*/  HTTP_CONTEXT_STATE_CLOSED ; 
 int /*<<< orphan*/  HTTP_CONTEXT_STATE_DROPPING ; 
 int /*<<< orphan*/  HTTP_CONTEXT_STATE_HANDLING ; 
 int /*<<< orphan*/  HTTP_CONTEXT_STATE_READY ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(HttpThread *pThread, HttpContext *pContext) {
  FUNC3(pThread, pContext);
  pContext->parsed = false;
  
  if (FUNC0(pContext, HTTP_CONTEXT_STATE_HANDLING, HTTP_CONTEXT_STATE_DROPPING)) {
    FUNC4("context:%p, fd:%d, ip:%s, epoll finished, still used by app", pContext, pContext->fd, pContext->ipstr);
  } else if (FUNC0(pContext, HTTP_CONTEXT_STATE_DROPPING, HTTP_CONTEXT_STATE_DROPPING)) {
    FUNC4("context:%p, fd:%d, ip:%s, epoll already finished, wait app finished", pContext, pContext->fd, pContext->ipstr);
  } else if (FUNC0(pContext, HTTP_CONTEXT_STATE_READY, HTTP_CONTEXT_STATE_CLOSED)) {
    FUNC4("context:%p, fd:%d, ip:%s, epoll finished, close context", pContext, pContext->fd, pContext->ipstr);
    FUNC1(pThread, pContext);
  } else if (FUNC0(pContext, HTTP_CONTEXT_STATE_CLOSED, HTTP_CONTEXT_STATE_CLOSED)) {
    FUNC4("context:%p, fd:%d, ip:%s, epoll finished, will be closed soon", pContext, pContext->fd, pContext->ipstr);
    FUNC1(pThread, pContext);
  } else {
    FUNC2("context:%p, fd:%d, ip:%s, unknown state:%d", pContext, pContext->fd, pContext->ipstr, pContext->state);
    FUNC1(pThread, pContext);
  }
}