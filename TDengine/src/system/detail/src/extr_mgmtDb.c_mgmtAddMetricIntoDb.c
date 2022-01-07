
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int numOfMetrics; TYPE_1__* pMetric; } ;
struct TYPE_5__ {struct TYPE_5__* prev; struct TYPE_5__* next; } ;
typedef TYPE_1__ STabObj ;
typedef TYPE_2__ SDbObj ;



int mgmtAddMetricIntoDb(SDbObj *pDb, STabObj *pMetric) {
  pMetric->next = pDb->pMetric;
  pMetric->prev = ((void*)0);

  if (pDb->pMetric) pDb->pMetric->prev = pMetric;

  pDb->pMetric = pMetric;
  pDb->numOfMetrics++;

  return 0;
}
