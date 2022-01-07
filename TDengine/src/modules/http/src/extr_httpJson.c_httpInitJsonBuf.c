
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct HttpContext {scalar_t__ acceptEncoding; int ipstr; int fd; } ;
struct TYPE_3__ {struct HttpContext* pContext; int lst; int size; scalar_t__ total; int buf; } ;
typedef TYPE_1__ JsonBuf ;


 scalar_t__ HTTP_COMPRESS_GZIP ;
 int JSON_BUFFER_SIZE ;
 int httpGzipCompressInit (struct HttpContext*) ;
 int httpTrace (char*,struct HttpContext*,int ,int ) ;
 int memset (int ,int ,int ) ;

void httpInitJsonBuf(JsonBuf* buf, struct HttpContext* pContext) {
  buf->lst = buf->buf;
  buf->total = 0;
  buf->size = JSON_BUFFER_SIZE;
  buf->pContext = pContext;
  memset(buf->lst, 0, JSON_BUFFER_SIZE);

  if (pContext->acceptEncoding == HTTP_COMPRESS_GZIP) {
    httpGzipCompressInit(buf->pContext);
  }

  httpTrace("context:%p, fd:%d, ip:%s, json buffer initialized", buf->pContext, buf->pContext->fd, buf->pContext->ipstr);
}
