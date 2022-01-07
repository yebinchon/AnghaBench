
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int user; int ipstr; int fd; } ;
typedef TYPE_1__ HttpContext ;


 int HTTP_GEN_TAOSD_TOKEN_ERR ;
 int httpGenTaosdAuthToken (TYPE_1__*,char*,int) ;
 int httpSendErrorResp (TYPE_1__*,int ) ;
 int httpSendSuccResp (TYPE_1__*,char*) ;
 int httpTrace (char*,TYPE_1__*,int ,int ,int ,char*) ;

void httpProcessLoginCmd(HttpContext *pContext) {
  char token[128] = {0};
  if (!httpGenTaosdAuthToken(pContext, token, 128)) {
    httpSendErrorResp(pContext, HTTP_GEN_TAOSD_TOKEN_ERR);
  } else {
    httpTrace("context:%p, fd:%d, ip:%s, user:%s, login via http, return token:%s",
              pContext, pContext->fd, pContext->ipstr, pContext->user, token);
    httpSendSuccResp(pContext, token);
  }
}
