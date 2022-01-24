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
struct TYPE_12__ {TYPE_2__* session; int /*<<< orphan*/  user; int /*<<< orphan*/  ipstr; int /*<<< orphan*/  fd; TYPE_1__* pThread; } ;
struct TYPE_11__ {int /*<<< orphan*/  serverMutex; int /*<<< orphan*/  pSessionHash; scalar_t__ sessionExpire; } ;
struct TYPE_10__ {int access; void* taos; int /*<<< orphan*/  id; struct TYPE_10__* signature; scalar_t__ expire; } ;
struct TYPE_9__ {TYPE_3__* pServer; } ;
typedef  TYPE_2__ HttpSession ;
typedef  TYPE_3__ HttpServer ;
typedef  TYPE_4__ HttpContext ;

/* Variables and functions */
 size_t HTTP_SESSION_FULL ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * httpMsg ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

void FUNC8(HttpContext *pContext, void *taos) {
  HttpServer *server = pContext->pThread->pServer;
  FUNC2(&server->serverMutex);

  if (pContext->session != NULL && pContext->session == pContext->session->signature) {
    FUNC1("context:%p, fd:%d, ip:%s, user:%s, set exist session:%p:%s:%p expired", pContext, pContext->fd,
              pContext->ipstr, pContext->user, pContext->session, pContext->session->id, pContext->session->taos);
    pContext->session->expire = 0;
    pContext->session->access--;
  }

  HttpSession session;
  session.taos = taos;
  session.expire = (int)FUNC6() + server->sessionExpire;
  session.access = 1;
  FUNC4(session.id, pContext->user);
  pContext->session = (HttpSession *)FUNC5(server->pSessionHash, session.id, (char *)(&session));
  if (pContext->session == NULL) {
    FUNC0("context:%p, fd:%d, ip:%s, user:%s, error:%s", pContext, pContext->fd, pContext->ipstr, pContext->user,
              httpMsg[HTTP_SESSION_FULL]);
    FUNC7(taos);
    FUNC3(&server->serverMutex);
    return;
  }

  pContext->session->signature = pContext->session;
  FUNC1("context:%p, fd:%d, ip:%s, user:%s, create a new session:%p:%s:%p", pContext, pContext->fd, pContext->ipstr,
            pContext->user, pContext->session, pContext->session->id, pContext->session->taos);
  FUNC3(&server->serverMutex);
}