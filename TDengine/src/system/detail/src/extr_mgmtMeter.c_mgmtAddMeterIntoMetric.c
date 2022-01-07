
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int rwLock; int numOfMeters; struct TYPE_6__* pHead; struct TYPE_6__* prev; struct TYPE_6__* next; } ;
typedef TYPE_1__ STabObj ;


 int addMeterIntoMetricIndex (TYPE_1__*,TYPE_1__*) ;
 int pthread_rwlock_unlock (int *) ;
 int pthread_rwlock_wrlock (int *) ;

int mgmtAddMeterIntoMetric(STabObj *pMetric, STabObj *pMeter) {
  if (pMeter == ((void*)0) || pMetric == ((void*)0)) return -1;

  pthread_rwlock_wrlock(&(pMetric->rwLock));

  pMeter->next = pMetric->pHead;
  pMeter->prev = ((void*)0);

  if (pMetric->pHead) pMetric->pHead->prev = pMeter;

  pMetric->pHead = pMeter;
  pMetric->numOfMeters++;

  addMeterIntoMetricIndex(pMetric, pMeter);

  pthread_rwlock_unlock(&(pMetric->rwLock));

  return 0;
}
