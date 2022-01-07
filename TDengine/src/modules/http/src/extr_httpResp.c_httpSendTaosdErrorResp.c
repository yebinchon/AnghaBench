
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HttpContext ;


 int httpSendErrorRespImp (int *,int,char*,int,int ) ;
 int * tsError ;

void httpSendTaosdErrorResp(HttpContext *pContext, int errCode) {
  int httpCode = 400;
  httpSendErrorRespImp(pContext, httpCode, "Bad Request", errCode, tsError[errCode]);
}
