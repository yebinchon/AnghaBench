
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int parsed; int state; int ipstr; int fd; } ;
typedef int HttpThread ;
typedef TYPE_1__ HttpContext ;


 int HTTP_CONTEXT_STATE_CLOSED ;
 int HTTP_CONTEXT_STATE_DROPPING ;
 int HTTP_CONTEXT_STATE_HANDLING ;
 int HTTP_CONTEXT_STATE_READY ;
 scalar_t__ httpAlterContextState (TYPE_1__*,int ,int ) ;
 int httpCloseContext (int *,TYPE_1__*) ;
 int httpError (char*,TYPE_1__*,int ,int ,int ) ;
 int httpRemoveContextFromEpoll (int *,TYPE_1__*) ;
 int httpTrace (char*,TYPE_1__*,int ,int ) ;

void httpCloseContextByServer(HttpThread *pThread, HttpContext *pContext) {
  httpRemoveContextFromEpoll(pThread, pContext);
  pContext->parsed = 0;

  if (httpAlterContextState(pContext, HTTP_CONTEXT_STATE_HANDLING, HTTP_CONTEXT_STATE_DROPPING)) {
    httpTrace("context:%p, fd:%d, ip:%s, epoll finished, still used by app", pContext, pContext->fd, pContext->ipstr);
  } else if (httpAlterContextState(pContext, HTTP_CONTEXT_STATE_DROPPING, HTTP_CONTEXT_STATE_DROPPING)) {
    httpTrace("context:%p, fd:%d, ip:%s, epoll already finished, wait app finished", pContext, pContext->fd, pContext->ipstr);
  } else if (httpAlterContextState(pContext, HTTP_CONTEXT_STATE_READY, HTTP_CONTEXT_STATE_CLOSED)) {
    httpTrace("context:%p, fd:%d, ip:%s, epoll finished, close context", pContext, pContext->fd, pContext->ipstr);
    httpCloseContext(pThread, pContext);
  } else if (httpAlterContextState(pContext, HTTP_CONTEXT_STATE_CLOSED, HTTP_CONTEXT_STATE_CLOSED)) {
    httpTrace("context:%p, fd:%d, ip:%s, epoll finished, will be closed soon", pContext, pContext->fd, pContext->ipstr);
    httpCloseContext(pThread, pContext);
  } else {
    httpError("context:%p, fd:%d, ip:%s, unknown state:%d", pContext, pContext->fd, pContext->ipstr, pContext->state);
    httpCloseContext(pThread, pContext);
  }
}
