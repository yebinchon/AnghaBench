#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* session; int /*<<< orphan*/  user; int /*<<< orphan*/  ipstr; TYPE_1__* pThread; } ;
struct TYPE_10__ {int /*<<< orphan*/  serverMutex; } ;
struct TYPE_9__ {int /*<<< orphan*/  expire; int /*<<< orphan*/  access; int /*<<< orphan*/  taos; int /*<<< orphan*/  id; struct TYPE_9__* signature; } ;
struct TYPE_8__ {TYPE_3__* pServer; } ;
typedef  TYPE_2__ HttpSession ;
typedef  TYPE_3__ HttpServer ;
typedef  TYPE_4__ HttpContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(HttpContext *pContext) {
  HttpServer * server = pContext->pThread->pServer;

  // all access to the session is via serverMutex
  FUNC1(&server->serverMutex);
  HttpSession *session = pContext->session;
  if (session == NULL || session != session->signature) {
    FUNC2(&server->serverMutex);
    return;
  }
  session->access--;
  FUNC0("context:%p, ip:%s, user:%s, restore session:%p:%s:%p, access:%d, expire:%d",
            pContext, pContext->ipstr, pContext->user, session, session->id, session->taos,
            session->access, pContext->session->expire);
  FUNC2(&server->serverMutex);
}