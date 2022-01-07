
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * session; int * taos; int user; int ipstr; int fd; struct TYPE_9__* signature; } ;
typedef int TAOS_RES ;
typedef TYPE_1__ HttpContext ;


 int HTTP_NO_ENOUGH_SESSIONS ;
 int HTTP_SESSION_FULL ;
 int httpCloseContextByApp (TYPE_1__*) ;
 int httpCreateSession (TYPE_1__*,int *) ;
 int httpError (char*,TYPE_1__*,int ,int ,int ,...) ;
 int httpExecCmd (TYPE_1__*) ;
 int httpSendErrorResp (TYPE_1__*,int ) ;
 int httpSendTaosdErrorResp (TYPE_1__*,int) ;
 int httpTrace (char*,TYPE_1__*,int ,int ,int ,int *) ;

void httpProcessRequestCb(void *param, TAOS_RES *result, int code) {
  HttpContext *pContext = param;
  if (pContext == ((void*)0) || pContext->signature != pContext) return;

  if (code < 0) {
    httpError("context:%p, fd:%d, ip:%s, user:%s, login error, code:%d", pContext, pContext->fd, pContext->ipstr,
              pContext->user, -code);
    httpSendTaosdErrorResp(pContext, -code);
    return;
  }

  httpTrace("context:%p, fd:%d, ip:%s, user:%s, connect tdengine success, taos:%p", pContext, pContext->fd,
            pContext->ipstr, pContext->user, pContext->taos);
  if (pContext->taos == ((void*)0)) {
    httpError("context:%p, fd:%d, ip:%s, user:%s, login error, taos is empty", pContext, pContext->fd, pContext->ipstr,
              pContext->user);
    httpSendErrorResp(pContext, HTTP_NO_ENOUGH_SESSIONS);
    return;
  }

  httpCreateSession(pContext, pContext->taos);

  if (pContext->session == ((void*)0)) {
    httpSendErrorResp(pContext, HTTP_SESSION_FULL);
    httpCloseContextByApp(pContext);
  } else {
    httpExecCmd(pContext);
  }
}
