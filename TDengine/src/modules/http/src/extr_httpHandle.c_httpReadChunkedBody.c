
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ipstr; int fd; } ;
typedef int HttpParser ;
typedef TYPE_1__ HttpContext ;


 int HTTP_CHECK_BODY_CONTINUE ;
 int HTTP_CHECK_BODY_ERROR ;
 int HTTP_CHECK_BODY_SUCCESS ;
 int httpError (char*,TYPE_1__*,int ,int ) ;
 int httpParseChunkedBody (TYPE_1__*,int *,int) ;
 int httpReadDataImp (TYPE_1__*) ;
 int httpTrace (char*,TYPE_1__*,int ,int ) ;

bool httpReadChunkedBody(HttpContext* pContext, HttpParser* pParser) {
  bool parsedOk = httpParseChunkedBody(pContext, pParser, 1);
  if (parsedOk) {
    httpParseChunkedBody(pContext, pParser, 0);
    return HTTP_CHECK_BODY_SUCCESS;
  } else {
    httpTrace("context:%p, fd:%d, ip:%s, chunked body not finished, continue read", pContext, pContext->fd,
              pContext->ipstr);
    if (!httpReadDataImp(pContext)) {
      httpError("context:%p, fd:%d, ip:%s, read chunked request error", pContext, pContext->fd, pContext->ipstr);
      return HTTP_CHECK_BODY_ERROR;
    } else {
      return HTTP_CHECK_BODY_CONTINUE;
    }
  }
}
