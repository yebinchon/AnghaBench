
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cid; int msg; } ;
typedef TYPE_1__ msg_t ;
struct TYPE_6__ {char* name; size_t fullSlot; int queueSize; int (* processMsg ) (TYPE_1__*) ;int emptySem; int queueMutex; TYPE_1__* queue; int fullSem; } ;
typedef TYPE_2__ module_t ;


 int PTHREAD_CANCEL_ASYNCHRONOUS ;
 int SIGINT ;
 int SIG_IGN ;
 int errno ;
 scalar_t__ maxCid ;
 int memset (TYPE_1__*,int ,int) ;
 int printf (char*,char*,char*) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 int pthread_setcanceltype (int ,int*) ;
 int signal (int ,int ) ;
 char* strerror (int ) ;
 int stub1 (TYPE_1__*) ;
 int tfree (int ) ;
 scalar_t__ tsem_post (int *) ;
 scalar_t__ tsem_wait (int *) ;

void *taosProcessQueue(void *param) {
  msg_t msg;
  module_t *pMod = (module_t *)param;
  int oldType;

  pthread_setcanceltype(PTHREAD_CANCEL_ASYNCHRONOUS, &oldType);

  signal(SIGINT, SIG_IGN);

  while (1) {
    if (tsem_wait(&pMod->fullSem) != 0)
      printf("ERROR: wait %s fullSem failed, reason:%s\n", pMod->name, strerror(errno));

    if (pthread_mutex_lock(&pMod->queueMutex) != 0)
      printf("ERROR: lock %s queueMutex failed, reason:%s\n", pMod->name, strerror(errno));

    msg = pMod->queue[pMod->fullSlot];
    memset(&(pMod->queue[pMod->fullSlot]), 0, sizeof(msg_t));
    pMod->fullSlot = (pMod->fullSlot + 1) % pMod->queueSize;

    if (pthread_mutex_unlock(&pMod->queueMutex) != 0)
      printf("ERROR: unlock %s queueMutex failed, reason:%s\n", pMod->name, strerror(errno));

    if (tsem_post(&pMod->emptySem) != 0)
      printf("ERROR: post %s emptySem failed, reason:%s\n", pMod->name, strerror(errno));


    if (msg.cid < 0 || msg.cid >= maxCid) {

      continue;
    }






    (*(pMod->processMsg))(&msg);

    tfree(msg.msg);





  }
}
