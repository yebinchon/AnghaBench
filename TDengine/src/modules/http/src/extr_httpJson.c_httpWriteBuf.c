
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HttpContext {int ipstr; int fd; } ;


 int httpError (char*,struct HttpContext*,int ,int ,int,int,char const*) ;
 int httpTrace (char*,struct HttpContext*,int ,int ,int,int,char const*) ;
 int httpWriteBufByFd (struct HttpContext*,char const*,int) ;

int httpWriteBuf(struct HttpContext *pContext, const char *buf, int sz) {
  int writeSz = httpWriteBufByFd(pContext, buf, sz);
  if (writeSz != sz) {
    httpError("context:%p, fd:%d, ip:%s, dataSize:%d, writeSize:%d, failed to send response:\n%s",
              pContext, pContext->fd, pContext->ipstr, sz, writeSz, buf);
  } else {
    httpTrace("context:%p, fd:%d, ip:%s, dataSize:%d, writeSize:%d, response:\n%s",
              pContext, pContext->fd, pContext->ipstr, sz, writeSz, buf);
  }

  return writeSz;
}
