
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ httpChunked; int parser; } ;
typedef int HttpParser ;
typedef TYPE_1__ HttpContext ;


 int HTTP_CHECK_BODY_SUCCESS ;
 scalar_t__ HTTP_UNCUNKED ;
 int httpReadChunkedBody (TYPE_1__*,int *) ;
 int httpReadUnChunkedBody (TYPE_1__*,int *) ;

int httpCheckReadCompleted(HttpContext* pContext) {
  HttpParser *pParser = &pContext->parser;
  if (pContext->httpChunked == HTTP_UNCUNKED) {
    int ret = httpReadUnChunkedBody(pContext, pParser);
    if (ret != HTTP_CHECK_BODY_SUCCESS) {
      return ret;
    }
  } else {
    int ret = httpReadChunkedBody(pContext, pParser);
    if (ret != HTTP_CHECK_BODY_SUCCESS) {
      return ret;
    }
  }

  return HTTP_CHECK_BODY_SUCCESS;
}
