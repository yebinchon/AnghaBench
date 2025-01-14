
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_30__ {int user; int ipstr; int fd; TYPE_3__* encodeMethod; TYPE_1__* multiCmds; struct TYPE_30__* signature; } ;
struct TYPE_29__ {int (* startJsonFp ) (TYPE_4__*,TYPE_2__*,int *) ;int (* setNextCmdFp ) (TYPE_4__*,TYPE_2__*,int) ;int (* stopJsonFp ) (TYPE_4__*,TYPE_2__*) ;int (* buildAffectRowJsonFp ) (TYPE_4__*,TYPE_2__*,int) ;int (* checkFinishedFp ) (TYPE_4__*,TYPE_2__*,int) ;} ;
struct TYPE_28__ {int code; scalar_t__ cmdReturnType; int sql; } ;
struct TYPE_27__ {int pos; TYPE_2__* cmds; } ;
typedef int TAOS_RES ;
typedef TYPE_1__ HttpSqlCmds ;
typedef TYPE_2__ HttpSqlCmd ;
typedef TYPE_3__ HttpEncodeMethod ;
typedef TYPE_4__ HttpContext ;


 scalar_t__ HTTP_CMD_RETURN_TYPE_WITH_RETURN ;
 int TSDB_CODE_ACTION_IN_PROGRESS ;
 int httpError (char*,TYPE_4__*,int ,int ,int ,int,int,char*) ;
 char* httpGetCmdsString (TYPE_4__*,int ) ;
 int httpProcessMultiSql (TYPE_4__*) ;
 int httpProcessMultiSqlRetrieveCallBack ;
 int httpTrace (char*,TYPE_4__*,int ,int ,int ,int,...) ;
 int httpWarn (char*,TYPE_4__*,int ,int ,int ,int,int,char*) ;
 int stub1 (TYPE_4__*,TYPE_2__*,int) ;
 int stub2 (TYPE_4__*,TYPE_2__*,int *) ;
 int stub3 (TYPE_4__*,TYPE_2__*) ;
 int stub4 (TYPE_4__*,TYPE_2__*,int *) ;
 int stub5 (TYPE_4__*,TYPE_2__*,int) ;
 int stub6 (TYPE_4__*,TYPE_2__*) ;
 int stub7 (TYPE_4__*,TYPE_2__*,int) ;
 int stub8 (TYPE_4__*,TYPE_2__*,int *) ;
 int taos_fetch_rows_a (int *,int ,TYPE_4__*) ;

void httpProcessMultiSqlCallBack(void *param, TAOS_RES *result, int code) {
  HttpContext *pContext = (HttpContext *)param;
  if (pContext == ((void*)0) || pContext->signature != pContext) return;

  HttpSqlCmds * multiCmds = pContext->multiCmds;
  HttpEncodeMethod *encode = pContext->encodeMethod;

  HttpSqlCmd *singleCmd = multiCmds->cmds + multiCmds->pos;
  char * sql = httpGetCmdsString(pContext, singleCmd->sql);

  if (-code == TSDB_CODE_ACTION_IN_PROGRESS) {
    httpWarn("context:%p, fd:%d, ip:%s, user:%s, process pos:%d, code:%d:inprogress, sql:%s",
             pContext, pContext->fd, pContext->ipstr, pContext->user, multiCmds->pos, -code, sql);
    return;
  }

  if (code < 0) {
    if (encode->checkFinishedFp != ((void*)0) && !encode->checkFinishedFp(pContext, singleCmd, code >= 0 ? 0 : -code)) {
      singleCmd->code = -code;
      httpTrace("context:%p, fd:%d, ip:%s, user:%s, process pos jump to:%d, last code:%d, last sql:%s",
                pContext, pContext->fd, pContext->ipstr, pContext->user, multiCmds->pos + 1, -code, sql);
    } else {
      singleCmd->code = -code;
      httpError("context:%p, fd:%d, ip:%s, user:%s, process pos:%d, error code:%d, sql:%s",
                pContext, pContext->fd, pContext->ipstr, pContext->user, multiCmds->pos, -code, sql);

      if (singleCmd->cmdReturnType == HTTP_CMD_RETURN_TYPE_WITH_RETURN) {
        if (encode->startJsonFp) (encode->startJsonFp)(pContext, singleCmd, result);
        if (encode->stopJsonFp) (encode->stopJsonFp)(pContext, singleCmd);
      }
    }
    multiCmds->pos++;
    httpProcessMultiSql(pContext);
    return;
  }

  if (result == ((void*)0)) {

    int affectRows = code;
    httpTrace("context:%p, fd:%d, ip:%s, user:%s, process pos:%d, affect rows:%d, sql:%s",
              pContext, pContext->fd, pContext->ipstr, pContext->user, multiCmds->pos, affectRows, sql);

    singleCmd->code = 0;

    if (singleCmd->cmdReturnType == HTTP_CMD_RETURN_TYPE_WITH_RETURN && encode->startJsonFp) {
      (encode->startJsonFp)(pContext, singleCmd, result);
    }

    if (singleCmd->cmdReturnType == HTTP_CMD_RETURN_TYPE_WITH_RETURN && encode->buildAffectRowJsonFp) {
      (encode->buildAffectRowJsonFp)(pContext, singleCmd, affectRows);
    }

    if (singleCmd->cmdReturnType == HTTP_CMD_RETURN_TYPE_WITH_RETURN && encode->stopJsonFp) {
      (encode->stopJsonFp)(pContext, singleCmd);
    }

    if (encode->setNextCmdFp) {
      (encode->setNextCmdFp)(pContext, singleCmd, code);
    } else {
      multiCmds->pos++;
    }

    httpProcessMultiSql(pContext);
  } else {
    httpTrace("context:%p, fd:%d, ip:%s, user:%s, process pos:%d, start retrieve, sql:%s",
              pContext, pContext->fd, pContext->ipstr, pContext->user, multiCmds->pos, sql);

    if (singleCmd->cmdReturnType == HTTP_CMD_RETURN_TYPE_WITH_RETURN && encode->startJsonFp) {
      (encode->startJsonFp)(pContext, singleCmd, result);
    }
    taos_fetch_rows_a(result, httpProcessMultiSqlRetrieveCallBack, pContext);
  }
}
