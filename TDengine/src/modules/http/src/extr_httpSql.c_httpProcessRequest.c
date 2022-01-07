
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ reqType; int taos; int user; int ipstr; int fd; int pass; TYPE_1__* session; } ;
struct TYPE_8__ {struct TYPE_8__* signature; } ;
typedef TYPE_2__ HttpContext ;


 scalar_t__ HTTP_REQTYPE_LOGIN ;
 int httpAccessSession (TYPE_2__*) ;
 int httpExecCmd (TYPE_2__*) ;
 int httpFetchSession (TYPE_2__*) ;
 int httpProcessRequestCb ;
 int httpTrace (char*,TYPE_2__*,int ,int ,int ,int ) ;
 int taos_connect_a (int *,int ,int ,char*,int ,int ,void*,int *) ;

void httpProcessRequest(HttpContext *pContext) {
  if (pContext->session == ((void*)0)) {
    httpFetchSession(pContext);
  }

  if (pContext->session == ((void*)0) || pContext->session != pContext->session->signature ||
      pContext->reqType == HTTP_REQTYPE_LOGIN) {
    taos_connect_a(((void*)0), pContext->user, pContext->pass, "", 0, httpProcessRequestCb, (void *)pContext,
                   &(pContext->taos));
    httpTrace("context:%p, fd:%d, ip:%s, user:%s, try connect tdengine, taos:%p", pContext, pContext->fd,
              pContext->ipstr, pContext->user, pContext->taos);
  } else {
    httpAccessSession(pContext);
    httpExecCmd(pContext);
  }
}
