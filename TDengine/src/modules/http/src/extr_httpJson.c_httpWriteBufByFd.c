
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HttpContext {int fd; int ipstr; } ;


 int HTTP_WRITE_RETRY_TIMES ;
 int HTTP_WRITE_WAIT_TIME_MS ;
 int MSG_NOSIGNAL ;
 int errno ;
 int httpTrace (char*,struct HttpContext*,int,int ,int ,...) ;
 scalar_t__ send (int,char const*,size_t,int ) ;
 int taosMsleep (int ) ;

int httpWriteBufByFd(struct HttpContext* pContext, const char* buf, int sz) {
  int len;
  int countWait = 0;
  int writeLen = 0;

  do {
    if (pContext->fd > 2){
      len = (int)send(pContext->fd, buf + writeLen, (size_t)(sz - writeLen), MSG_NOSIGNAL);
    }
    else {
      return sz;
    }

    if (len < 0) {
      httpTrace("context:%p, fd:%d, ip:%s, socket write errno:%d, times:%d",
                pContext, pContext->fd, pContext->ipstr, errno, countWait);
      if (++countWait > HTTP_WRITE_RETRY_TIMES) break;
      taosMsleep(HTTP_WRITE_WAIT_TIME_MS);
      continue;
    } else if (len == 0) {
      httpTrace("context:%p, fd:%d, ip:%s, socket write errno:%d, connect already closed",
                pContext, pContext->fd, pContext->ipstr, errno);
      break;
    } else {
      countWait = 0;
      writeLen += len;
    }
  } while (writeLen < sz);

  return writeLen;
}
