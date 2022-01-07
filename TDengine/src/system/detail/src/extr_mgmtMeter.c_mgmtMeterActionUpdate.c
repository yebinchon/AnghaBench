
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ isDirty; int schema; int pTagData; } ;
typedef TYPE_1__ STabObj ;


 int addMeterIntoMetricIndex (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* mgmtGetMeter (int ) ;
 int mgmtMeterActionReset (TYPE_1__*,char*,int,int *) ;
 int removeMeterFromMetricIndex (TYPE_1__*,TYPE_1__*) ;

void *mgmtMeterActionUpdate(void *row, char *str, int size, int *ssize) {
  STabObj *pMeter = ((void*)0);
  STabObj *pMetric = ((void*)0);

  pMeter = (STabObj *)row;
  STabObj *pNew = (STabObj *)str;

  if (pNew->isDirty) {
    pMetric = mgmtGetMeter(pMeter->pTagData);
    removeMeterFromMetricIndex(pMetric, pMeter);
  }
  mgmtMeterActionReset(pMeter, str, size, ((void*)0));
  pMeter->pTagData = pMeter->schema;
  if (pNew->isDirty) {
    addMeterIntoMetricIndex(pMetric, pMeter);
    pMeter->isDirty = 0;
  }

  return ((void*)0);
}
