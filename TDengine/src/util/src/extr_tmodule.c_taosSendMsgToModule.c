
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* name; size_t emptySlot; int queueSize; int fullSem; int queueMutex; TYPE_1__* queue; int emptySem; } ;
typedef TYPE_2__ module_t ;
struct TYPE_4__ {int cid; int mid; int tid; char* msg; } ;


 int errno ;
 int printf (char*,char*,char*) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 char* strerror (int ) ;
 scalar_t__ tsem_post (int *) ;
 scalar_t__ tsem_wait (int *) ;

int taosSendMsgToModule(module_t *pMod, int cid, int mid, int tid, char *msg) {
  if (tsem_wait(&pMod->emptySem) != 0)
    printf("ERROR: wait %s emptySem failed, reason:%s\n", pMod->name, strerror(errno));

  if (pthread_mutex_lock(&pMod->queueMutex) != 0)
    printf("ERROR: lock %s queueMutex failed, reason:%s\n", pMod->name, strerror(errno));

  pMod->queue[pMod->emptySlot].cid = cid;
  pMod->queue[pMod->emptySlot].mid = mid;
  pMod->queue[pMod->emptySlot].tid = tid;
  pMod->queue[pMod->emptySlot].msg = msg;
  pMod->emptySlot = (pMod->emptySlot + 1) % pMod->queueSize;

  if (pthread_mutex_unlock(&pMod->queueMutex) != 0)
    printf("ERROR: unlock %s queueMutex failed, reason:%s\n", pMod->name, strerror(errno));

  if (tsem_post(&pMod->fullSem) != 0) printf("ERROR: post %s fullSem failed, reason:%s\n", pMod->name, strerror(errno));

  return 0;
}
