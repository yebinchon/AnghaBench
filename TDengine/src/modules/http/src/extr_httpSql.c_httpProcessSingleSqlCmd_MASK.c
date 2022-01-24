#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* nativSql; } ;
struct TYPE_10__ {int /*<<< orphan*/  user; int /*<<< orphan*/  ipstr; int /*<<< orphan*/  fd; TYPE_2__* session; TYPE_1__ singleCmd; } ;
struct TYPE_9__ {int /*<<< orphan*/  taos; } ;
typedef  TYPE_1__ HttpSqlCmd ;
typedef  TYPE_2__ HttpSession ;
typedef  TYPE_3__ HttpContext ;

/* Variables and functions */
 int /*<<< orphan*/  HTTP_NO_SQL_INPUT ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  httpProcessSingleSqlCallBack ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*) ; 

void FUNC5(HttpContext *pContext) {
  HttpSqlCmd * cmd = &pContext->singleCmd;
  char *       sql = cmd->nativSql;
  HttpSession *pSession = pContext->session;

  if (sql == NULL || sql[0] == 0) {
    FUNC1("context:%p, fd:%d, ip:%s, user:%s, error:no sql input", pContext, pContext->fd, pContext->ipstr,
              pContext->user);
    FUNC2(pContext, HTTP_NO_SQL_INPUT);
    return;
  }

  FUNC0("context:%p, fd:%d, ip:%s, user:%s, start query, sql:%s", pContext, pContext->fd, pContext->ipstr,
           pContext->user, sql);
  FUNC3(sql);
  FUNC4(pSession->taos, sql, httpProcessSingleSqlCallBack, (void *)pContext);
}