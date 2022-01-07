
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int fd; scalar_t__ acceptEncoding; size_t httpVersion; size_t httpKeepAlive; } ;
struct TYPE_4__ {TYPE_3__* pContext; } ;
typedef TYPE_1__ JsonBuf ;


 scalar_t__ HTTP_COMPRESS_IDENTITY ;
 size_t HTTP_RESPONSE_CHUNKED_COMPRESS ;
 size_t HTTP_RESPONSE_CHUNKED_UN_COMPRESS ;
 int * httpKeepAliveStr ;
 char** httpRespTemplate ;
 int * httpVersionStr ;
 int httpWriteBuf (TYPE_3__*,char const*,int) ;
 int sprintf (char*,char*,int ,int ) ;

void httpWriteJsonBufHead(JsonBuf* buf) {
  if (buf->pContext->fd <= 0) {
    buf->pContext->fd = -1;
  }

  char msg[1024] = {0};
  int len = -1;

  if (buf->pContext->acceptEncoding == HTTP_COMPRESS_IDENTITY) {
    len = sprintf(msg, httpRespTemplate[HTTP_RESPONSE_CHUNKED_UN_COMPRESS], httpVersionStr[buf->pContext->httpVersion],
                  httpKeepAliveStr[buf->pContext->httpKeepAlive]);
  } else {
    len = sprintf(msg, httpRespTemplate[HTTP_RESPONSE_CHUNKED_COMPRESS], httpVersionStr[buf->pContext->httpVersion],
                  httpKeepAliveStr[buf->pContext->httpKeepAlive]);
  }

  httpWriteBuf(buf->pContext, (const char*)msg, len);
}
