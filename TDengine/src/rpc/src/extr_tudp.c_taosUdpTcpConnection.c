
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int pthread_t ;
typedef int pthread_attr_t ;
typedef int clientAddr ;
struct TYPE_8__ {int fd; TYPE_2__* pSet; int port; int ip; } ;
struct TYPE_7__ {scalar_t__ tcpFd; int label; int port; int ip; } ;
typedef TYPE_2__ SUdpConnSet ;
typedef TYPE_3__ STransfer ;


 int PTHREAD_CREATE_DETACHED ;
 int accept (scalar_t__,struct sockaddr*,int*) ;
 int errno ;
 int free (TYPE_3__*) ;
 int htons (int ) ;
 TYPE_3__* malloc (int) ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 int strerror (int ) ;
 int tError (char*,int ,int ) ;
 int tPrint (char*,int ,int ,int ,int ) ;
 int tTrace (char*,int ,char*,...) ;
 int taosCloseSocket (int) ;
 int taosKillSystem () ;
 scalar_t__ taosOpenTcpServerSocket (int ,int ) ;
 int taosTransferDataViaTcp ;
 int tinet_ntoa (char*,int ) ;

void *taosUdpTcpConnection(void *argv) {
  int connFd = -1;
  struct sockaddr_in clientAddr;
  pthread_attr_t thattr;
  pthread_t thread;
  uint32_t sourceIp;
  char ipstr[20];

  SUdpConnSet *pSet = (SUdpConnSet *)argv;

  pSet->tcpFd = taosOpenTcpServerSocket(pSet->ip, pSet->port);
  if (pSet->tcpFd < 0) {
    tPrint("%s failed to create TCP socket %s:%d for UDP server, reason:%s", pSet->label, pSet->ip, pSet->port,
           strerror(errno));
    taosKillSystem();
    return ((void*)0);
  }

  tTrace("%s UDP server is created, ip:%s:%d", pSet->label, pSet->ip, pSet->port);

  pthread_attr_init(&thattr);
  pthread_attr_setdetachstate(&thattr, PTHREAD_CREATE_DETACHED);

  while (1) {
    if (pSet->tcpFd < 0) break;
    socklen_t addrlen = sizeof(clientAddr);
    connFd = accept(pSet->tcpFd, (struct sockaddr *)&clientAddr, &addrlen);

    if (connFd < 0) {
      tError("%s UDP server TCP accept failure, reason:%s", pSet->label, strerror(errno));
      continue;
    }

    sourceIp = clientAddr.sin_addr.s_addr;
    tinet_ntoa(ipstr, sourceIp);
    tTrace("%s UDP server TCP connection from ip:%s:%u", pSet->label, ipstr, htons(clientAddr.sin_port));

    STransfer *pTransfer = malloc(sizeof(STransfer));
    pTransfer->fd = connFd;
    pTransfer->ip = sourceIp;
    pTransfer->port = clientAddr.sin_port;
    pTransfer->pSet = pSet;

    if (pthread_create(&(thread), &thattr, taosTransferDataViaTcp, (void *)pTransfer) < 0) {
      tTrace("%s failed to create thread for UDP server, reason:%s", pSet->label, strerror(errno));
      free(pTransfer);
      taosCloseSocket(connFd);
    }
  }

  pthread_attr_destroy(&thattr);
  return ((void*)0);
}
