
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int fd; int ipstr; } ;
struct TYPE_6__ {TYPE_4__* pContext; } ;
typedef TYPE_1__ JsonBuf ;


 int httpTrace (char*,TYPE_4__*,int,int ) ;
 int httpWriteBufNoTrace (TYPE_4__*,char*,int) ;
 int httpWriteJsonBufBody (TYPE_1__*,int) ;

void httpWriteJsonBufEnd(JsonBuf* buf) {
  if (buf->pContext->fd <= 0) {
    httpTrace("context:%p, fd:%d, ip:%s, json buf fd is 0", buf->pContext, buf->pContext->fd, buf->pContext->ipstr);
    buf->pContext->fd = -1;
  }

  httpWriteJsonBufBody(buf, 1);
  httpWriteBufNoTrace(buf->pContext, "0\r\n\r\n", 5);
}
