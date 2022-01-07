
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* nativSql; } ;
struct TYPE_10__ {int user; int ipstr; int fd; TYPE_2__* session; TYPE_1__ singleCmd; } ;
struct TYPE_9__ {int taos; } ;
typedef TYPE_1__ HttpSqlCmd ;
typedef TYPE_2__ HttpSession ;
typedef TYPE_3__ HttpContext ;


 int HTTP_NO_SQL_INPUT ;
 int httpDump (char*,TYPE_3__*,int ,int ,int ,char*) ;
 int httpError (char*,TYPE_3__*,int ,int ,int ) ;
 int httpProcessSingleSqlCallBack ;
 int httpSendErrorResp (TYPE_3__*,int ) ;
 int taosNotePrint (char*) ;
 int taos_query_a (int ,char*,int ,void*) ;

void httpProcessSingleSqlCmd(HttpContext *pContext) {
  HttpSqlCmd * cmd = &pContext->singleCmd;
  char * sql = cmd->nativSql;
  HttpSession *pSession = pContext->session;

  if (sql == ((void*)0) || sql[0] == 0) {
    httpError("context:%p, fd:%d, ip:%s, user:%s, error:no sql input", pContext, pContext->fd, pContext->ipstr,
              pContext->user);
    httpSendErrorResp(pContext, HTTP_NO_SQL_INPUT);
    return;
  }

  httpDump("context:%p, fd:%d, ip:%s, user:%s, start query, sql:%s", pContext, pContext->fd, pContext->ipstr,
           pContext->user, sql);
  taosNotePrint(sql);
  taos_query_a(pSession->taos, sql, httpProcessSingleSqlCallBack, (void *)pContext);
}
