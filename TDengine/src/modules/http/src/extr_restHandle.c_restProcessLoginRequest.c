
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int reqType; int user; int ipstr; int fd; } ;
typedef TYPE_1__ HttpContext ;


 int HTTP_REQTYPE_LOGIN ;
 int httpTrace (char*,TYPE_1__*,int ,int ,int ) ;

bool restProcessLoginRequest(HttpContext* pContext) {
  httpTrace("context:%p, fd:%d, ip:%s, user:%s, process restful login msg", pContext, pContext->fd, pContext->ipstr,
            pContext->user);
  pContext->reqType = HTTP_REQTYPE_LOGIN;
  return 1;
}
