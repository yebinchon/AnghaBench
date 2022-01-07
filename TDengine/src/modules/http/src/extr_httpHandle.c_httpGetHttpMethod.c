
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t int16_t ;
struct TYPE_7__ {char* pos; size_t len; } ;
struct TYPE_8__ {char* pLast; TYPE_1__ method; } ;
struct TYPE_9__ {int ipstr; int fd; TYPE_2__ parser; } ;
typedef TYPE_2__ HttpParser ;
typedef TYPE_3__ HttpContext ;


 int HTTP_PARSE_HTTP_METHOD_ERROR ;
 int httpSendErrorResp (TYPE_3__*,int ) ;
 int httpTrace (char*,TYPE_3__*,int ,int ,char*) ;
 char* strchr (char*,char) ;

bool httpGetHttpMethod(HttpContext* pContext) {
  HttpParser* pParser = &pContext->parser;

  char* pSeek = strchr(pParser->pLast, ' ');
  if (pSeek == ((void*)0)) {
    httpSendErrorResp(pContext, HTTP_PARSE_HTTP_METHOD_ERROR);
    return 0;
  }
  pParser->method.pos = pParser->pLast;
  pParser->method.len = (int16_t)(pSeek - pParser->pLast);
  pParser->method.pos[pParser->method.len] = 0;
  pParser->pLast = pSeek + 1;

  httpTrace("context:%p, fd:%d, ip:%s, httpMethod:%s", pContext, pContext->fd, pContext->ipstr, pParser->method.pos);
  return 1;
}
