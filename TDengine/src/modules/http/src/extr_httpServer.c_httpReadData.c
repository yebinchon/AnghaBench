
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {int ipstr; int fd; int timer; int parsed; } ;
struct TYPE_18__ {TYPE_1__* pServer; } ;
struct TYPE_17__ {int timerHandle; } ;
typedef TYPE_2__ HttpThread ;
typedef TYPE_3__ HttpContext ;


 int HTTP_CHECK_BODY_CONTINUE ;
 int HTTP_CHECK_BODY_SUCCESS ;
 int HTTP_EXPIRED_TIME ;
 int httpCheckReadCompleted (TYPE_3__*) ;
 int httpCleanUpContextTimer (TYPE_3__*) ;
 int httpCloseContextByServer (TYPE_2__*,TYPE_3__*) ;
 int httpCloseContextByServerForExpired ;
 scalar_t__ httpDecompressData (TYPE_3__*) ;
 int httpError (char*,TYPE_3__*,int ,int ) ;
 int httpInitContext (TYPE_3__*) ;
 int httpParseRequest (TYPE_3__*) ;
 int httpReadDataImp (TYPE_3__*) ;
 int httpTrace (char*,TYPE_3__*,int ,int ,int ) ;
 int taosTmrReset (int ,int ,TYPE_3__*,int ,int *) ;

bool httpReadData(HttpThread *pThread, HttpContext *pContext) {
  if (!pContext->parsed) {
    httpInitContext(pContext);
  }

  if (!httpReadDataImp(pContext)) {
    httpCloseContextByServer(pThread, pContext);
    return 0;
  }

  if (!httpParseRequest(pContext)) {
    httpCloseContextByServer(pThread, pContext);
    return 0;
  }

  int ret = httpCheckReadCompleted(pContext);
  if (ret == HTTP_CHECK_BODY_CONTINUE) {
    taosTmrReset(httpCloseContextByServerForExpired, HTTP_EXPIRED_TIME, pContext, pThread->pServer->timerHandle, &pContext->timer);
    httpTrace("context:%p, fd:%d, ip:%s, not finished yet, try another times, timer:%p", pContext, pContext->fd, pContext->ipstr, pContext->timer);
    return 0;
  } else if (ret == HTTP_CHECK_BODY_SUCCESS){
    httpCleanUpContextTimer(pContext);
    if (httpDecompressData(pContext)) {
      return 1;
    } else {
      httpCloseContextByServer(pThread, pContext);
      return 0;
    }
  } else {
    httpCleanUpContextTimer(pContext);
    httpError("context:%p, fd:%d, ip:%s, failed to read http body, close connect", pContext, pContext->fd, pContext->ipstr);
    httpCloseContextByServer(pThread, pContext);
    return 0;
  }
}
