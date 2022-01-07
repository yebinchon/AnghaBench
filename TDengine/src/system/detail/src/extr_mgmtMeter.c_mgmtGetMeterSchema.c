
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ schema; int pTagData; } ;
typedef TYPE_1__ STabObj ;
typedef int SSchema ;


 int assert (int ) ;
 TYPE_1__* mgmtGetMeter (int ) ;
 int mgmtMeterCreateFromMetric (TYPE_1__*) ;

SSchema *mgmtGetMeterSchema(STabObj *pMeter) {
  if (pMeter == ((void*)0)) {
    return ((void*)0);
  }

  if (!mgmtMeterCreateFromMetric(pMeter)) {
    return (SSchema *)pMeter->schema;
  }

  STabObj *pMetric = mgmtGetMeter(pMeter->pTagData);
  assert(pMetric != ((void*)0));

  return (SSchema *)pMetric->schema;
}
