
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int pos; } ;
struct TYPE_12__ {TYPE_1__ method; } ;
struct TYPE_13__ {int ipstr; int fd; TYPE_2__ parser; int state; } ;
typedef TYPE_3__ HttpContext ;


 int HTTP_CONTEXT_STATE_HANDLING ;
 int HTTP_CONTEXT_STATE_READY ;
 int httpAlterContextState (TYPE_3__*,int ,int ) ;
 int httpCloseContextByApp (TYPE_3__*) ;
 int httpContextStateStr (int ) ;
 int httpDecodeRequest (TYPE_3__*) ;
 int httpProcessRequest (TYPE_3__*) ;
 int httpSendOptionResp (TYPE_3__*,char*) ;
 int httpTrace (char*,TYPE_3__*,int ,int ,...) ;
 scalar_t__ strcmp (int ,char*) ;

bool httpProcessData(HttpContext* pContext) {

  if (!httpAlterContextState(pContext, HTTP_CONTEXT_STATE_READY, HTTP_CONTEXT_STATE_HANDLING)) {
    httpTrace("context:%p, fd:%d, ip:%s, state:%s not in ready state, stop process request",
            pContext, pContext->fd, pContext->ipstr, httpContextStateStr(pContext->state));
    httpCloseContextByApp(pContext);
    return 0;
  }


  if (strcmp(pContext->parser.method.pos, "OPTIONS") == 0) {
    httpTrace("context:%p, fd:%d, ip:%s, process options request", pContext, pContext->fd, pContext->ipstr);
    httpSendOptionResp(pContext, "process options request success");
  } else {
    if (!httpDecodeRequest(pContext)) {




    } else {
      httpProcessRequest(pContext);
    }
  }

  return 1;
}
