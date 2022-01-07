
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int rwLock; int numOfMeters; TYPE_1__* next; TYPE_1__* pHead; TYPE_2__* prev; } ;
struct TYPE_9__ {TYPE_1__* next; } ;
struct TYPE_8__ {TYPE_2__* prev; } ;
typedef TYPE_3__ STabObj ;


 int pthread_rwlock_unlock (int *) ;
 int pthread_rwlock_wrlock (int *) ;
 int removeMeterFromMetricIndex (TYPE_3__*,TYPE_3__*) ;

int mgmtRemoveMeterFromMetric(STabObj *pMetric, STabObj *pMeter) {
  pthread_rwlock_wrlock(&(pMetric->rwLock));

  if (pMeter->prev) pMeter->prev->next = pMeter->next;

  if (pMeter->next) pMeter->next->prev = pMeter->prev;

  if (pMeter->prev == ((void*)0)) pMetric->pHead = pMeter->next;

  pMetric->numOfMeters--;

  removeMeterFromMetricIndex(pMetric, pMeter);

  pthread_rwlock_unlock(&(pMetric->rwLock));

  return 0;
}
