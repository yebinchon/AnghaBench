
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_21__ {int singleCmd; int user; int ipstr; int fd; TYPE_2__* session; TYPE_4__* encodeMethod; struct TYPE_21__* signature; } ;
struct TYPE_20__ {int (* startJsonFp ) (TYPE_5__*,int *,int *) ;int (* stopJsonFp ) (TYPE_5__*,int *) ;int (* buildAffectRowJsonFp ) (TYPE_5__*,int *,int) ;} ;
struct TYPE_17__ {int payload; } ;
struct TYPE_19__ {TYPE_1__ cmd; } ;
struct TYPE_18__ {int taos; } ;
typedef int TAOS_RES ;
typedef TYPE_3__ SSqlObj ;
typedef TYPE_4__ HttpEncodeMethod ;
typedef TYPE_5__ HttpContext ;


 int TSDB_CODE_ACTION_IN_PROGRESS ;
 int TSDB_CODE_INVALID_SQL ;
 int httpCloseContextByApp (TYPE_5__*) ;
 int httpError (char*,TYPE_5__*,int ,int ,int ,int ,int,TYPE_3__*,...) ;
 int httpProcessSingleSqlRetrieveCallBack ;
 int httpSendTaosdErrorResp (TYPE_5__*,int) ;
 int httpSendTaosdInvalidSqlErrorResp (TYPE_5__*,int ) ;
 int httpTrace (char*,TYPE_5__*,int ,int ,int ,...) ;
 int stub1 (TYPE_5__*,int *,int *) ;
 int stub2 (TYPE_5__*,int *,int) ;
 int stub3 (TYPE_5__*,int *) ;
 int stub4 (TYPE_5__*,int *,int *) ;
 int taos_fetch_rows_a (int *,int ,TYPE_5__*) ;

void httpProcessSingleSqlCallBack(void *param, TAOS_RES *result, int code) {
  HttpContext *pContext = (HttpContext *)param;
  if (pContext == ((void*)0) || pContext->signature != pContext) return;

  HttpEncodeMethod *encode = pContext->encodeMethod;

  if (-code == TSDB_CODE_ACTION_IN_PROGRESS) {
    httpError("context:%p, fd:%d, ip:%s, user:%s, query error, taos:%p, code:%d:inprogress, sqlObj:%p",
              pContext, pContext->fd, pContext->ipstr, pContext->user, pContext->session->taos, -code, (SSqlObj *)result);
    return;
  }

  if (code < 0) {
    SSqlObj *pObj = (SSqlObj *)result;
    if (-code == TSDB_CODE_INVALID_SQL) {
      httpError("context:%p, fd:%d, ip:%s, user:%s, query error, taos:%p, code:%d:invalidsql, sqlObj:%p, error:%s",
                pContext, pContext->fd, pContext->ipstr, pContext->user, pContext->session->taos, -code, pObj, pObj->cmd.payload);
      httpSendTaosdInvalidSqlErrorResp(pContext, pObj->cmd.payload);
    } else {
      httpError("context:%p, fd:%d, ip:%s, user:%s, query error, taos:%p, code:%d, sqlObj:%p",
                pContext, pContext->fd, pContext->ipstr, pContext->user, pContext->session->taos, -code, pObj);
      httpSendTaosdErrorResp(pContext, -code);
    }
    return;
  }

  if (result == ((void*)0)) {

    int affectRows = code;

    httpTrace("context:%p, fd:%d, ip:%s, user:%s, affect rows:%d, stop query, sqlObj:%p",
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

    httpCloseContextByApp(pContext);
  } else {
    httpTrace("context:%p, fd:%d, ip:%s, user:%s, start retrieve", pContext, pContext->fd, pContext->ipstr,
              pContext->user);

    if (encode->startJsonFp) {
      (encode->startJsonFp)(pContext, &pContext->singleCmd, result);
    }

    taos_fetch_rows_a(result, httpProcessSingleSqlRetrieveCallBack, pContext);
  }
}
