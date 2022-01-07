
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int user; int ipstr; int fd; TYPE_3__* encodeMethod; TYPE_1__* multiCmds; struct TYPE_16__* signature; } ;
struct TYPE_15__ {int (* buildQueryJsonFp ) (TYPE_4__*,TYPE_2__*,int *,int) ;int (* stopJsonFp ) (TYPE_4__*,TYPE_2__*) ;} ;
struct TYPE_14__ {scalar_t__ cmdReturnType; int sql; } ;
struct TYPE_13__ {int pos; TYPE_2__* cmds; } ;
typedef int TAOS_RES ;
typedef TYPE_1__ HttpSqlCmds ;
typedef TYPE_2__ HttpSqlCmd ;
typedef TYPE_3__ HttpEncodeMethod ;
typedef TYPE_4__ HttpContext ;


 scalar_t__ HTTP_CMD_RETURN_TYPE_WITH_RETURN ;
 int httpError (char*,TYPE_4__*,int ,int ,int ,int,int,char*) ;
 char* httpGetCmdsString (TYPE_4__*,int ) ;
 int httpProcessMultiSql (TYPE_4__*) ;
 int httpTrace (char*,TYPE_4__*,int ,int ,int ,int,int,char*) ;
 int stub1 (TYPE_4__*,TYPE_2__*,int *,int) ;
 int stub2 (TYPE_4__*,TYPE_2__*) ;
 int taos_fetch_rows_a (int *,void (*) (void*,int *,int),void*) ;
 int taos_free_result (int *) ;

void httpProcessMultiSqlRetrieveCallBack(void *param, TAOS_RES *result, int numOfRows) {
  HttpContext *pContext = (HttpContext *)param;
  if (pContext == ((void*)0) || pContext->signature != pContext) return;

  HttpSqlCmds * multiCmds = pContext->multiCmds;
  HttpEncodeMethod *encode = pContext->encodeMethod;

  HttpSqlCmd *singleCmd = multiCmds->cmds + multiCmds->pos;
  char * sql = httpGetCmdsString(pContext, singleCmd->sql);

  bool isContinue = 0;

  if (numOfRows > 0) {
    if (singleCmd->cmdReturnType == HTTP_CMD_RETURN_TYPE_WITH_RETURN && encode->buildQueryJsonFp) {
      isContinue = (encode->buildQueryJsonFp)(pContext, singleCmd, result, numOfRows);
    }
  }

  if (isContinue) {

    httpTrace("context:%p, fd:%d, ip:%s, user:%s, process pos:%d, continue retrieve, numOfRows:%d, sql:%s",
              pContext, pContext->fd, pContext->ipstr, pContext->user, multiCmds->pos, numOfRows, sql);
    taos_fetch_rows_a(result, httpProcessMultiSqlRetrieveCallBack, param);
  } else {
    httpTrace("context:%p, fd:%d, ip:%s, user:%s, process pos:%d, stop retrieve, numOfRows:%d, sql:%s",
              pContext, pContext->fd, pContext->ipstr, pContext->user, multiCmds->pos, numOfRows, sql);

    if (numOfRows < 0) {
      httpError("context:%p, fd:%d, ip:%s, user:%s, process pos:%d, retrieve failed code:%d, sql:%s",
                pContext, pContext->fd, pContext->ipstr, pContext->user, multiCmds->pos, -numOfRows, sql);
    } else {
      taos_free_result(result);
    }

    if (singleCmd->cmdReturnType == HTTP_CMD_RETURN_TYPE_WITH_RETURN && encode->stopJsonFp) {
      (encode->stopJsonFp)(pContext, singleCmd);
    }
    multiCmds->pos++;
    httpProcessMultiSql(pContext);
  }
}
