
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
struct TYPE_4__ {int thread; int pollFd; TYPE_3__* pHead; } ;
typedef TYPE_1__ STcpClient ;


 int close (int ) ;
 int pthread_cancel (int ) ;
 int pthread_join (int ,int *) ;
 int taosCleanUpTcpFdObj (TYPE_3__*) ;
 int tfree (TYPE_1__*) ;

void taosCleanUpTcpClient(void *chandle) {
  STcpClient *pTcp = (STcpClient *)chandle;
  if (pTcp == ((void*)0)) return;

  while (pTcp->pHead) {
    taosCleanUpTcpFdObj(pTcp->pHead);
    pTcp->pHead = pTcp->pHead->next;
  }

  close(pTcp->pollFd);

  pthread_cancel(pTcp->thread);
  pthread_join(pTcp->thread, ((void*)0));



  tfree(pTcp);
}
