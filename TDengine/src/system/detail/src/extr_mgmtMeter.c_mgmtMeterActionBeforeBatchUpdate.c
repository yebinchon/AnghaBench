
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rwLock; } ;
typedef TYPE_1__ STabObj ;


 int pthread_rwlock_wrlock (int *) ;

void *mgmtMeterActionBeforeBatchUpdate(void *row, char *str, int size, int *ssize) {
  STabObj *pMetric = (STabObj *)row;

  pthread_rwlock_wrlock(&(pMetric->rwLock));

  return ((void*)0);
}
