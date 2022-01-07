
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t httpVersion; size_t httpKeepAlive; } ;
typedef TYPE_1__ HttpContext ;


 size_t HTTP_RESPONSE_JSON_OK ;
 size_t HTTP_RESPONSE_OK ;
 int HTTP_SUCCESS ;
 int httpCloseContextByApp (TYPE_1__*) ;
 int * httpKeepAliveStr ;
 char** httpRespTemplate ;
 int * httpVersionStr ;
 int httpWriteBuf (TYPE_1__*,char*,int) ;
 int sprintf (char*,char*,int ,char*,...) ;

void httpSendSuccResp(HttpContext *pContext, char *desc) {
  char head[1024] = {0};
  char body[1024] = {0};

  int bodyLen = sprintf(body, httpRespTemplate[HTTP_RESPONSE_JSON_OK], HTTP_SUCCESS, desc);
  int headLen = sprintf(head, httpRespTemplate[HTTP_RESPONSE_OK], httpVersionStr[pContext->httpVersion],
                        httpKeepAliveStr[pContext->httpKeepAlive], bodyLen);

  httpWriteBuf(pContext, head, headLen);
  httpWriteBuf(pContext, body, bodyLen);
  httpCloseContextByApp(pContext);
}
