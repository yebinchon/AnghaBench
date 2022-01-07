
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pLast; } ;
struct TYPE_8__ {void* httpVersion; int ipstr; int fd; TYPE_1__ parser; } ;
typedef TYPE_1__ HttpParser ;
typedef TYPE_2__ HttpContext ;


 int HTTP_PARSE_HTTP_VERSION_ERROR ;
 void* HTTP_VERSION_10 ;
 void* HTTP_VERSION_11 ;
 int httpError (char*,TYPE_2__*,int ,int ,int ) ;
 int httpSendErrorResp (TYPE_2__*,int ) ;
 int httpTrace (char*,TYPE_2__*,int ,int ,void*) ;
 char* strchr (int ,char) ;

bool httpParseHttpVersion(HttpContext* pContext) {
  HttpParser* pParser = &pContext->parser;
  char* pEnd = strchr(pParser->pLast, '1');
  if (pEnd == ((void*)0)) {
    httpError("context:%p, fd:%d, ip:%s, can't find http version at position:%s", pContext, pContext->fd,
              pContext->ipstr, pParser->pLast);
    httpSendErrorResp(pContext, HTTP_PARSE_HTTP_VERSION_ERROR);
    return 0;
  }

  if (*(pEnd + 1) != '.') {
    httpError("context:%p, fd:%d, ip:%s, can't find http version at position:%s", pContext, pContext->fd,
              pContext->ipstr, pParser->pLast);
    httpSendErrorResp(pContext, HTTP_PARSE_HTTP_VERSION_ERROR);
    return 0;
  }

  if (*(pEnd + 2) == '0')
    pContext->httpVersion = HTTP_VERSION_10;
  else if (*(pEnd + 2) == '1')
    pContext->httpVersion = HTTP_VERSION_11;
  else if (*(pEnd + 2) == '2')
    pContext->httpVersion = HTTP_VERSION_11;
  else
    pContext->httpVersion = HTTP_VERSION_10;

  httpTrace("context:%p, fd:%d, ip:%s, httpVersion:1.%d", pContext, pContext->fd, pContext->ipstr,
            pContext->httpVersion);
  return 1;
}
