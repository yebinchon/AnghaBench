
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t emptySlot; int queueSize; int label; int fullSem; int queueMutex; int * queue; int emptySem; } ;
typedef TYPE_1__ SSchedQueue ;
typedef int SSchedMsg ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int pError (char*,int ,...) ;
 int pTrace (char*,int ) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 int strerror (scalar_t__) ;
 scalar_t__ tsem_post (int *) ;
 scalar_t__ tsem_wait (int *) ;

int taosScheduleTask(void *qhandle, SSchedMsg *pMsg) {
  SSchedQueue *pSched = (SSchedQueue *)qhandle;
  if (pSched == ((void*)0)) {
    pError("sched is not ready, msg:%p is dropped", pMsg);
    return 0;
  }

  while (tsem_wait(&pSched->emptySem) != 0) {
    if (errno != EINTR) {
      pError("wait %s emptySem failed, reason:%s", pSched->label, strerror(errno));
      break;
    }
    pTrace("wait %s emptySem was interrupted", pSched->label);
  }

  if (pthread_mutex_lock(&pSched->queueMutex) != 0)
    pError("lock %s queueMutex failed, reason:%s", pSched->label, strerror(errno));

  pSched->queue[pSched->emptySlot] = *pMsg;
  pSched->emptySlot = (pSched->emptySlot + 1) % pSched->queueSize;

  if (pthread_mutex_unlock(&pSched->queueMutex) != 0)
    pError("unlock %s queueMutex failed, reason:%s", pSched->label, strerror(errno));

  if (tsem_post(&pSched->fullSem) != 0) pError("post %s fullSem failed, reason:%s", pSched->label, strerror(errno));

  return 0;
}
