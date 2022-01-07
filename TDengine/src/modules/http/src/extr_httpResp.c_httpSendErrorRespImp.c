
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t httpVersion; size_t httpKeepAlive; int ipstr; int fd; } ;
typedef TYPE_1__ HttpContext ;


 size_t HTTP_RESPONSE_ERROR ;
 size_t HTTP_RESPONSE_JSON_ERROR ;
 int httpCloseContextByApp (TYPE_1__*) ;
 int httpError (char*,TYPE_1__*,int ,int ,int,int,char*) ;
 int * httpKeepAliveStr ;
 char** httpRespTemplate ;
 int * httpVersionStr ;
 int httpWriteBuf (TYPE_1__*,char*,int) ;
 int sprintf (char*,char*,int,...) ;

void httpSendErrorRespImp(HttpContext *pContext, int httpCode, char *httpCodeStr, int errNo, char *desc) {
  httpError("context:%p, fd:%d, ip:%s, code:%d, error:%d:%s", pContext, pContext->fd, pContext->ipstr, httpCode, errNo,
            desc);

  char head[512] = {0};
  char body[512] = {0};

  int bodyLen = sprintf(body, httpRespTemplate[HTTP_RESPONSE_JSON_ERROR], errNo, desc);
  int headLen = sprintf(head, httpRespTemplate[HTTP_RESPONSE_ERROR], httpVersionStr[pContext->httpVersion], httpCode,
                        httpCodeStr, httpKeepAliveStr[pContext->httpKeepAlive], bodyLen);

  httpWriteBuf(pContext, head, headLen);
  httpWriteBuf(pContext, body, bodyLen);
  httpCloseContextByApp(pContext);
}
