
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int numOfMetrics; TYPE_2__* pMetric; } ;
struct TYPE_9__ {int * pSkipList; TYPE_2__* next; TYPE_1__* prev; } ;
struct TYPE_8__ {TYPE_1__* prev; } ;
struct TYPE_7__ {TYPE_2__* next; } ;
typedef TYPE_3__ STabObj ;
typedef TYPE_4__ SDbObj ;


 int * tSkipListDestroy (int *) ;

int mgmtRemoveMetricFromDb(SDbObj *pDb, STabObj *pMetric) {
  if (pMetric->prev) pMetric->prev->next = pMetric->next;

  if (pMetric->next) pMetric->next->prev = pMetric->prev;

  if (pMetric->prev == ((void*)0)) pDb->pMetric = pMetric->next;

  pDb->numOfMetrics--;

  if (pMetric->pSkipList != ((void*)0)) {
    pMetric->pSkipList = tSkipListDestroy(pMetric->pSkipList);
  }
  return 0;
}
