
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {size_t httpVersion; size_t httpKeepAlive; } ;
struct TYPE_11__ {char* lst; char* buf; } ;
typedef TYPE_1__ JsonBuf ;
typedef int HttpSqlCmd ;
typedef TYPE_2__ HttpContext ;


 size_t HTTP_RESPONSE_GRAFANA ;
 int JsonObjEnd ;
 int JsonObjStt ;
 int httpInitJsonBuf (TYPE_1__*,TYPE_2__*) ;
 int httpJsonPair (TYPE_1__*,char*,int,char*,int) ;
 int httpJsonToken (TYPE_1__*,int ) ;
 int * httpKeepAliveStr ;
 TYPE_1__* httpMallocJsonBuf (TYPE_2__*) ;
 char** httpRespTemplate ;
 int * httpVersionStr ;
 int httpWriteBuf (TYPE_2__*,char*,int) ;
 int sprintf (char*,char*,int ,int ,int) ;
 scalar_t__ strlen (char*) ;

void gcSendHeartBeatResp(HttpContext *pContext, HttpSqlCmd *cmd) {
  JsonBuf *jsonBuf = httpMallocJsonBuf(pContext);
  if (jsonBuf == ((void*)0)) return;

  char *desc = "Grafana server receive a quest from you!";

  httpInitJsonBuf(jsonBuf, pContext);

  httpJsonToken(jsonBuf, JsonObjStt);
  httpJsonPair(jsonBuf, "message", (int)strlen("message"), desc, (int)strlen(desc));
  httpJsonToken(jsonBuf, JsonObjEnd);

  char head[1024];

  int hLen = sprintf(head, httpRespTemplate[HTTP_RESPONSE_GRAFANA], httpVersionStr[pContext->httpVersion],
                     httpKeepAliveStr[pContext->httpKeepAlive], (jsonBuf->lst - jsonBuf->buf));
  httpWriteBuf(pContext, head, hLen);
  httpWriteBuf(pContext, jsonBuf->buf, (int)(jsonBuf->lst - jsonBuf->buf));
}
