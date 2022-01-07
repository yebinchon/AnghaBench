
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int buffer; int pLast; int pCur; } ;
struct TYPE_9__ {int parsed; int accessTimes; TYPE_1__* pThread; int ipstr; int fd; TYPE_2__ parser; TYPE_2__ singleCmd; int * timer; int * encodeMethod; int reqType; void* contentEncoding; void* acceptEncoding; int httpChunked; int httpKeepAlive; int httpVersion; int lastAccessTime; } ;
struct TYPE_7__ {int label; } ;
typedef int HttpSqlCmd ;
typedef TYPE_2__ HttpParser ;
typedef TYPE_3__ HttpContext ;


 void* HTTP_COMPRESS_IDENTITY ;
 int HTTP_KEEPALIVE_NO_INPUT ;
 int HTTP_REQTYPE_OTHERS ;
 int HTTP_UNCUNKED ;
 int HTTP_VERSION_10 ;
 int httpTrace (char*,TYPE_3__*,int ,int ,int ,int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int taosGetTimestampSec () ;

bool httpInitContext(HttpContext *pContext) {
  pContext->accessTimes++;
  pContext->lastAccessTime = taosGetTimestampSec();
  pContext->httpVersion = HTTP_VERSION_10;
  pContext->httpKeepAlive = HTTP_KEEPALIVE_NO_INPUT;
  pContext->httpChunked = HTTP_UNCUNKED;
  pContext->acceptEncoding = HTTP_COMPRESS_IDENTITY;
  pContext->contentEncoding = HTTP_COMPRESS_IDENTITY;
  pContext->reqType = HTTP_REQTYPE_OTHERS;
  pContext->encodeMethod = ((void*)0);
  pContext->timer = ((void*)0);
  memset(&pContext->singleCmd, 0, sizeof(HttpSqlCmd));

  HttpParser *pParser = &pContext->parser;
  memset(pParser, 0, sizeof(HttpParser));
  pParser->pCur = pParser->pLast = pParser->buffer;

  httpTrace("context:%p, fd:%d, ip:%s, thread:%s, accessTimes:%d, parsed:%d",
          pContext, pContext->fd, pContext->ipstr, pContext->pThread->label, pContext->accessTimes, pContext->parsed);
  return 1;
}
