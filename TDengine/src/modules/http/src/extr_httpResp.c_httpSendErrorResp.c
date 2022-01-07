
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HttpContext ;


 int httpSendErrorRespWithDesc (int *,int,int *) ;

void httpSendErrorResp(HttpContext *pContext, int errNo) { httpSendErrorRespWithDesc(pContext, errNo, ((void*)0)); }
