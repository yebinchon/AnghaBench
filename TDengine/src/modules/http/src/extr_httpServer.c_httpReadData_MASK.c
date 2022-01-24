#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  ipstr; int /*<<< orphan*/  fd; int /*<<< orphan*/  timer; int /*<<< orphan*/  parsed; } ;
struct TYPE_18__ {TYPE_1__* pServer; } ;
struct TYPE_17__ {int /*<<< orphan*/  timerHandle; } ;
typedef  TYPE_2__ HttpThread ;
typedef  TYPE_3__ HttpContext ;

/* Variables and functions */
 int HTTP_CHECK_BODY_CONTINUE ; 
 int HTTP_CHECK_BODY_SUCCESS ; 
 int /*<<< orphan*/  HTTP_EXPIRED_TIME ; 
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  httpCloseContextByServerForExpired ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC10(HttpThread *pThread, HttpContext *pContext) {
  if (!pContext->parsed) {
    FUNC5(pContext);
  }

  if (!FUNC7(pContext)) {
    FUNC2(pThread, pContext);
    return false;
  }

  if (!FUNC6(pContext)) {
    FUNC2(pThread, pContext);
    return false;
  }

  int ret = FUNC0(pContext);
  if (ret == HTTP_CHECK_BODY_CONTINUE) {
    FUNC9(httpCloseContextByServerForExpired, HTTP_EXPIRED_TIME, pContext, pThread->pServer->timerHandle, &pContext->timer);
    FUNC8("context:%p, fd:%d, ip:%s, not finished yet, try another times, timer:%p", pContext, pContext->fd, pContext->ipstr, pContext->timer);
    return false;
  } else if (ret == HTTP_CHECK_BODY_SUCCESS){
    FUNC1(pContext);
    if (FUNC3(pContext)) {
      return true;
    } else {
      FUNC2(pThread, pContext);
      return false;
    }
  } else {
    FUNC1(pContext);
    FUNC4("context:%p, fd:%d, ip:%s, failed to read http body, close connect", pContext, pContext->fd, pContext->ipstr);
    FUNC2(pThread, pContext);
    return false;
  }
}