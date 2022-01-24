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
struct TYPE_9__ {int /*<<< orphan*/ * session; int /*<<< orphan*/ * taos; int /*<<< orphan*/  user; int /*<<< orphan*/  ipstr; int /*<<< orphan*/  fd; struct TYPE_9__* signature; } ;
typedef  int /*<<< orphan*/  TAOS_RES ;
typedef  TYPE_1__ HttpContext ;

/* Variables and functions */
 int /*<<< orphan*/  HTTP_NO_ENOUGH_SESSIONS ; 
 int /*<<< orphan*/  HTTP_SESSION_FULL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(void *param, TAOS_RES *result, int code) {
  HttpContext *pContext = param;
  if (pContext == NULL || pContext->signature != pContext) return;

  if (code < 0) {
    FUNC2("context:%p, fd:%d, ip:%s, user:%s, login error, code:%d", pContext, pContext->fd, pContext->ipstr,
              pContext->user, -code);
    FUNC5(pContext, -code);
    return;
  }

  FUNC6("context:%p, fd:%d, ip:%s, user:%s, connect tdengine success, taos:%p", pContext, pContext->fd,
            pContext->ipstr, pContext->user, pContext->taos);
  if (pContext->taos == NULL) {
    FUNC2("context:%p, fd:%d, ip:%s, user:%s, login error, taos is empty", pContext, pContext->fd, pContext->ipstr,
              pContext->user);
    FUNC4(pContext, HTTP_NO_ENOUGH_SESSIONS);
    return;
  }

  FUNC1(pContext, pContext->taos);

  if (pContext->session == NULL) {
    FUNC4(pContext, HTTP_SESSION_FULL);
    FUNC0(pContext);
  } else {
    FUNC3(pContext);
  }
}