#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pThread; int /*<<< orphan*/  ipstr; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ HttpContext ;

/* Variables and functions */
 int /*<<< orphan*/  HTTP_PARSE_BODY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC4(void *param, void *tmrId) {
  HttpContext *pContext = (HttpContext *)param;
  FUNC2(pContext->pThread, pContext);
  FUNC1("context:%p, fd:%d, ip:%s, read http body error, time expired, timer:%p", pContext, pContext->fd, pContext->ipstr, tmrId);
  FUNC3(pContext, HTTP_PARSE_BODY_ERROR);
  FUNC0(pContext->pThread, pContext);
}