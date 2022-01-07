
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int timer; int state; int ipstr; int fd; } ;
struct TYPE_9__ {TYPE_1__* pServer; } ;
struct TYPE_8__ {int timerHandle; } ;
typedef TYPE_2__ HttpThread ;
typedef TYPE_3__ HttpContext ;


 int HTTP_DELAY_CLOSE_TIME_MS ;
 int httpCleanUpContext ;
 int httpContextStateStr (int ) ;
 int httpTrace (char*,TYPE_3__*,int ,int ,int ,int ,int ) ;
 int taosTmrReset (int ,int ,TYPE_3__*,int ,int *) ;

void httpCloseContext(HttpThread *pThread, HttpContext *pContext) {
  taosTmrReset(httpCleanUpContext, HTTP_DELAY_CLOSE_TIME_MS, pContext, pThread->pServer->timerHandle, &pContext->timer);
  httpTrace("context:%p, fd:%d, ip:%s, state:%s will be closed after:%d ms, timer:%p",
          pContext, pContext->fd, pContext->ipstr, httpContextStateStr(pContext->state), HTTP_DELAY_CLOSE_TIME_MS, pContext->timer);
}
