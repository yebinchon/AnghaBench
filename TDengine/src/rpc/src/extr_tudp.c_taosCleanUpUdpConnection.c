
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int thread; int mutex; scalar_t__ hash; int fd; int * signature; } ;
struct TYPE_5__ {int server; int threads; int tcpFd; int tmrCtrl; TYPE_2__* udpConn; int tcpThread; } ;
typedef TYPE_1__ SUdpConnSet ;
typedef TYPE_2__ SUdpConn ;


 int pthread_cancel (int ) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_destroy (int *) ;
 int tTrace (char*,TYPE_2__*) ;
 int taosCloseIpHash (scalar_t__) ;
 int taosCloseSocket (int ) ;
 int taosCloseTcpSocket (int) ;
 int taosTmrCleanUp (int ) ;
 int tfree (TYPE_1__*) ;

void taosCleanUpUdpConnection(void *handle) {
  SUdpConnSet *pSet = (SUdpConnSet *)handle;
  SUdpConn * pConn;

  if (pSet == ((void*)0)) return;
  if (pSet->server == 1) {
    pthread_cancel(pSet->tcpThread);
  }

  for (int i = 0; i < pSet->threads; ++i) {
    pConn = pSet->udpConn + i;
    pConn->signature = ((void*)0);
    pthread_cancel(pConn->thread);
    taosCloseSocket(pConn->fd);
    if (pConn->hash) {
      taosCloseIpHash(pConn->hash);
      pthread_mutex_destroy(&pConn->mutex);
    }
  }

  for (int i = 0; i < pSet->threads; ++i) {
    pConn = pSet->udpConn + i;
    pthread_join(pConn->thread, ((void*)0));
    tTrace("chandle:%p is closed", pConn);
  }

  if (pSet->tcpFd >= 0) taosCloseTcpSocket(pSet->tcpFd);
  pSet->tcpFd = -1;
  taosTmrCleanUp(pSet->tmrCtrl);
  tfree(pSet);
}
