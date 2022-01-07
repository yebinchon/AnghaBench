
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pThread; int ipstr; int fd; } ;
typedef TYPE_1__ HttpContext ;


 int HTTP_PARSE_BODY_ERROR ;
 int httpCloseContextByServer (int ,TYPE_1__*) ;
 int httpError (char*,TYPE_1__*,int ,int ,void*) ;
 int httpRemoveContextFromEpoll (int ,TYPE_1__*) ;
 int httpSendErrorResp (TYPE_1__*,int ) ;

void httpCloseContextByServerForExpired(void *param, void *tmrId) {
  HttpContext *pContext = (HttpContext *)param;
  httpRemoveContextFromEpoll(pContext->pThread, pContext);
  httpError("context:%p, fd:%d, ip:%s, read http body error, time expired, timer:%p", pContext, pContext->fd, pContext->ipstr, tmrId);
  httpSendErrorResp(pContext, HTTP_PARSE_BODY_ERROR);
  httpCloseContextByServer(pContext->pThread, pContext);
}
