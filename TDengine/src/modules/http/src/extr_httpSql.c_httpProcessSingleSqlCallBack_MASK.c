#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  singleCmd; int /*<<< orphan*/  user; int /*<<< orphan*/  ipstr; int /*<<< orphan*/  fd; TYPE_2__* session; TYPE_4__* encodeMethod; struct TYPE_21__* signature; } ;
struct TYPE_20__ {int /*<<< orphan*/  (* startJsonFp ) (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* stopJsonFp ) (TYPE_5__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* buildAffectRowJsonFp ) (TYPE_5__*,int /*<<< orphan*/ *,int) ;} ;
struct TYPE_17__ {int /*<<< orphan*/  payload; } ;
struct TYPE_19__ {TYPE_1__ cmd; } ;
struct TYPE_18__ {int /*<<< orphan*/  taos; } ;
typedef  int /*<<< orphan*/  TAOS_RES ;
typedef  TYPE_3__ SSqlObj ;
typedef  TYPE_4__ HttpEncodeMethod ;
typedef  TYPE_5__ HttpContext ;

/* Variables and functions */
 int TSDB_CODE_ACTION_IN_PROGRESS ; 
 int TSDB_CODE_INVALID_SQL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_3__*,...) ; 
 int /*<<< orphan*/  httpProcessSingleSqlRetrieveCallBack ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*) ; 

void FUNC10(void *param, TAOS_RES *result, int code) {
  HttpContext *pContext = (HttpContext *)param;
  if (pContext == NULL || pContext->signature != pContext) return;

  HttpEncodeMethod *encode = pContext->encodeMethod;

  if (-code == TSDB_CODE_ACTION_IN_PROGRESS) {
    FUNC1("context:%p, fd:%d, ip:%s, user:%s, query error, taos:%p, code:%d:inprogress, sqlObj:%p",
              pContext, pContext->fd, pContext->ipstr, pContext->user, pContext->session->taos, -code, (SSqlObj *)result);
    return;
  }

  if (code < 0) {
    SSqlObj *pObj = (SSqlObj *)result;
    if (-code == TSDB_CODE_INVALID_SQL) {
      FUNC1("context:%p, fd:%d, ip:%s, user:%s, query error, taos:%p, code:%d:invalidsql, sqlObj:%p, error:%s",
                pContext, pContext->fd, pContext->ipstr, pContext->user, pContext->session->taos, -code, pObj, pObj->cmd.payload);
      FUNC3(pContext, pObj->cmd.payload);
    } else {
      FUNC1("context:%p, fd:%d, ip:%s, user:%s, query error, taos:%p, code:%d, sqlObj:%p",
                pContext, pContext->fd, pContext->ipstr, pContext->user, pContext->session->taos, -code, pObj);
      FUNC2(pContext, -code);
    }
    return;
  }

  if (result == NULL) {
    // not select or show commands
    int affectRows = code;

    FUNC4("context:%p, fd:%d, ip:%s, user:%s, affect rows:%d, stop query, sqlObj:%p",
              pContext, pContext->fd, pContext->ipstr, pContext->user, affectRows, result);

    if (encode->startJsonFp) {
      (encode->startJsonFp)(pContext, &pContext->singleCmd, result);
    }

    if (encode->buildAffectRowJsonFp) {
      (encode->buildAffectRowJsonFp)(pContext, &pContext->singleCmd, affectRows);
    }

    if (encode->stopJsonFp) {
      (encode->stopJsonFp)(pContext, &pContext->singleCmd);
    }

    FUNC0(pContext);
  } else {
    FUNC4("context:%p, fd:%d, ip:%s, user:%s, start retrieve", pContext, pContext->fd, pContext->ipstr,
              pContext->user);

    if (encode->startJsonFp) {
      (encode->startJsonFp)(pContext, &pContext->singleCmd, result);
    }

    FUNC9(result, httpProcessSingleSqlRetrieveCallBack, pContext);
  }
}