
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linger {int l_onoff; scalar_t__ l_linger; } ;
typedef int linger ;


 int SOL_SOCKET ;
 int SO_LINGER ;
 int errno ;
 int pError (char*,int ,int ) ;
 int strerror (int ) ;
 int taosCloseSocket (int) ;
 scalar_t__ taosSetSockOpt (int,int ,int ,void*,int) ;

void taosCloseTcpSocket(int sockFd) {
  struct linger linger;
  linger.l_onoff = 1;
  linger.l_linger = 0;
  if (taosSetSockOpt(sockFd, SOL_SOCKET, SO_LINGER, (void *)&linger, sizeof(linger)) < 0) {
    pError("setsockopt SO_LINGER failed: %d (%s)", errno, strerror(errno));
  }

  taosCloseSocket(sockFd);
}
