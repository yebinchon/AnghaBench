
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int singleCmd; TYPE_1__* encodeMethod; } ;
struct TYPE_7__ {int (* stopJsonFp ) (TYPE_2__*,int *) ;int (* startJsonFp ) (TYPE_2__*,int *,int *) ;} ;
typedef TYPE_1__ HttpEncodeMethod ;
typedef TYPE_2__ HttpContext ;


 int httpCloseContextByApp (TYPE_2__*) ;
 int stub1 (TYPE_2__*,int *,int *) ;
 int stub2 (TYPE_2__*,int *) ;

void httpProcessHeartBeatCmd(HttpContext *pContext) {
  HttpEncodeMethod *encode = pContext->encodeMethod;
  if (encode->startJsonFp) {
    (encode->startJsonFp)(pContext, &pContext->singleCmd, ((void*)0));
  }
  if (encode->stopJsonFp) {
    (encode->stopJsonFp)(pContext, &pContext->singleCmd);
  }
  httpCloseContextByApp(pContext);
}
