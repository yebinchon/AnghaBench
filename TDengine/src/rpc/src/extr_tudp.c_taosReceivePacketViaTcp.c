
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef int pthread_t ;
typedef int pthread_attr_t ;
struct TYPE_14__ {int dataLen; TYPE_1__* pSet; int pTimer; TYPE_2__* pConn; int port; int ip; int data; } ;
struct TYPE_13__ {int port; int handle; } ;
struct TYPE_12__ {int tranId; int destId; int sourceId; scalar_t__ content; } ;
struct TYPE_11__ {TYPE_1__* pSet; } ;
struct TYPE_10__ {int label; int tmrCtrl; } ;
typedef TYPE_1__ SUdpConnSet ;
typedef TYPE_2__ SUdpConn ;
typedef TYPE_3__ STaosHeader ;
typedef TYPE_4__ SPacketInfo ;
typedef TYPE_5__ SMonitor ;


 int PTHREAD_CREATE_DETACHED ;
 scalar_t__ calloc (int,int) ;
 int errno ;
 int memcpy (int ,TYPE_3__*,size_t) ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 int pthread_create (int *,int *,int ,void*) ;
 int strerror (int ) ;
 int tTrace (char*,int ,int ,...) ;
 int taosProcessMonitorTimer ;
 int taosReadTcpData ;
 int taosTmrReset (int ,int ,TYPE_5__*,int ,int *) ;

int taosReceivePacketViaTcp(uint32_t ip, STaosHeader *pHead, SUdpConn *pConn) {
  SUdpConnSet * pSet = pConn->pSet;
  SPacketInfo * pInfo = (SPacketInfo *)pHead->content;
  int code = 0;
  pthread_attr_t thattr;
  pthread_t thread;

  tTrace("%s receive packet via TCP, handle:0x%x, source:0x%08x dest:0x%08x tranId:%d", pSet->label, pInfo->handle,
         pHead->sourceId, pHead->destId, pHead->tranId);

  SMonitor *pMonitor = (SMonitor *)calloc(1, sizeof(SMonitor));
  pMonitor->dataLen = sizeof(STaosHeader) + sizeof(SPacketInfo);
  memcpy(pMonitor->data, pHead, (size_t)pMonitor->dataLen);
  pMonitor->pSet = pSet;
  pMonitor->ip = ip;
  pMonitor->port = pInfo->port;
  pMonitor->pConn = pConn;
  taosTmrReset(taosProcessMonitorTimer, 0, pMonitor, pSet->tmrCtrl, &pMonitor->pTimer);

  pthread_attr_init(&thattr);
  pthread_attr_setdetachstate(&thattr, PTHREAD_CREATE_DETACHED);
  code = pthread_create(&(thread), &thattr, taosReadTcpData, (void *)pMonitor);
  if (code < 0) {
    tTrace("%s failed to create thread to read tcp data, reason:%s", pSet->label, strerror(errno));
    pMonitor->pSet = ((void*)0);
  }

  pthread_attr_destroy(&thattr);
  return code;
}
