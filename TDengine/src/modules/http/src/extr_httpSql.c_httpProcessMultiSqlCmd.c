
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* encodeMethod; int user; int ipstr; int fd; TYPE_1__* multiCmds; struct TYPE_11__* signature; } ;
struct TYPE_10__ {int (* initJsonFp ) (TYPE_3__*) ;} ;
struct TYPE_9__ {scalar_t__ size; scalar_t__ pos; } ;
typedef TYPE_1__ HttpSqlCmds ;
typedef TYPE_2__ HttpEncodeMethod ;
typedef TYPE_3__ HttpContext ;


 int HTTP_INVALID_MULTI_REQUEST ;
 int httpProcessMultiSql (TYPE_3__*) ;
 int httpSendErrorResp (TYPE_3__*,int ) ;
 int httpTrace (char*,TYPE_3__*,int ,int ,int ,scalar_t__,scalar_t__) ;
 int stub1 (TYPE_3__*) ;

void httpProcessMultiSqlCmd(HttpContext *pContext) {
  if (pContext == ((void*)0) || pContext->signature != pContext) return;

  HttpSqlCmds *multiCmds = pContext->multiCmds;
  if (multiCmds == ((void*)0) || multiCmds->size <= 0 || multiCmds->pos >= multiCmds->size || multiCmds->pos < 0) {
    httpSendErrorResp(pContext, HTTP_INVALID_MULTI_REQUEST);
    return;
  }

  httpTrace("context:%p, fd:%d, ip:%s, user:%s, start multi-querys pos:%d, size:%d", pContext, pContext->fd,
            pContext->ipstr, pContext->user, multiCmds->pos, multiCmds->size);
  HttpEncodeMethod *encode = pContext->encodeMethod;
  if (encode->initJsonFp) {
    (encode->initJsonFp)(pContext);
  }

  httpProcessMultiSql(pContext);
}
