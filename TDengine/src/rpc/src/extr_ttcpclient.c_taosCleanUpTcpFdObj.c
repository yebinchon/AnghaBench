
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ numOfFds; int label; int shandle; int (* processData ) (int *,int ,int ,int ,int ,scalar_t__,int *) ;int mutex; TYPE_1__* pHead; int pollFd; } ;
struct TYPE_10__ {scalar_t__ thandle; TYPE_2__* prev; TYPE_1__* next; int fd; TYPE_4__* pTcp; struct TYPE_10__* signature; } ;
struct TYPE_9__ {TYPE_1__* next; } ;
struct TYPE_8__ {TYPE_2__* prev; } ;
typedef TYPE_3__ STcpFd ;
typedef TYPE_4__ STcpClient ;


 int EPOLL_CTL_DEL ;
 int close (int ) ;
 int epoll_ctl (int ,int ,int ,int *) ;
 int memset (TYPE_3__*,int ,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (int *,int ,int ,int ,int ,scalar_t__,int *) ;
 int tError (char*,...) ;
 int tTrace (char*,int ,scalar_t__) ;
 int tfree (TYPE_3__*) ;

__attribute__((used)) static void taosCleanUpTcpFdObj(STcpFd *pFdObj) {
  STcpClient *pTcp;

  if (pFdObj == ((void*)0)) return;
  if (pFdObj->signature != pFdObj) return;

  pTcp = pFdObj->pTcp;
  if (pTcp == ((void*)0)) {
    tError("double free TcpFdObj!!!!");
    return;
  }

  epoll_ctl(pTcp->pollFd, EPOLL_CTL_DEL, pFdObj->fd, ((void*)0));
  close(pFdObj->fd);

  pthread_mutex_lock(&pTcp->mutex);

  pTcp->numOfFds--;

  if (pTcp->numOfFds < 0) tError("%s number of TCP FDs shall never be negative", pTcp->label);



  if (pFdObj->prev) {
    (pFdObj->prev)->next = pFdObj->next;
  } else {
    pTcp->pHead = pFdObj->next;
  }

  if (pFdObj->next) {
    (pFdObj->next)->prev = pFdObj->prev;
  }

  pthread_mutex_unlock(&pTcp->mutex);


  if (pFdObj->thandle) (*(pTcp->processData))(((void*)0), 0, 0, 0, pTcp->shandle, pFdObj->thandle, ((void*)0));

  tTrace("%s TCP FD is cleaned up, numOfFds:%d", pTcp->label, pTcp->numOfFds);

  memset(pFdObj, 0, sizeof(STcpFd));

  tfree(pFdObj);
}
