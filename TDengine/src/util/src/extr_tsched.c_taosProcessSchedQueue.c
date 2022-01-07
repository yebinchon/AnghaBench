
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int thandle; int ahandle; int (* tfp ) (int ,int ) ;int (* fp ) (TYPE_2__*) ;} ;
struct TYPE_5__ {size_t fullSlot; int queueSize; int label; int emptySem; int queueMutex; TYPE_2__* queue; int fullSem; } ;
typedef TYPE_1__ SSchedQueue ;
typedef TYPE_2__ SSchedMsg ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int memset (TYPE_2__*,int ,int) ;
 int pError (char*,int ,scalar_t__,...) ;
 int pTrace (char*,int ) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 int strerror (scalar_t__) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (int ,int ) ;
 scalar_t__ tsem_post (int *) ;
 scalar_t__ tsem_wait (int *) ;

void *taosProcessSchedQueue(void *param) {
  SSchedMsg msg;
  SSchedQueue *pSched = (SSchedQueue *)param;

  while (1) {
    if (tsem_wait(&pSched->fullSem) != 0) {
      if (errno == EINTR) {

        pTrace("wait %s fullSem was interrupted", pSched->label);
        continue;
      }
      pError("wait %s fullSem failed, errno:%d, reason:%s", pSched->label, errno, strerror(errno));
    }

    if (pthread_mutex_lock(&pSched->queueMutex) != 0)
      pError("lock %s queueMutex failed, reason:%s", pSched->label, strerror(errno));

    msg = pSched->queue[pSched->fullSlot];
    memset(pSched->queue + pSched->fullSlot, 0, sizeof(SSchedMsg));
    pSched->fullSlot = (pSched->fullSlot + 1) % pSched->queueSize;

    if (pthread_mutex_unlock(&pSched->queueMutex) != 0)
      pError("unlock %s queueMutex failed, reason:%s\n", pSched->label, strerror(errno));

    if (tsem_post(&pSched->emptySem) != 0)
      pError("post %s emptySem failed, reason:%s\n", pSched->label, strerror(errno));

    if (msg.fp)
      (*(msg.fp))(&msg);
    else if (msg.tfp)
      (*(msg.tfp))(msg.ahandle, msg.thandle);
  }
}
