
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_6__ {char* pTagData; scalar_t__ numOfColumns; scalar_t__ schema; } ;
typedef TYPE_1__ STabObj ;
typedef int SSchema ;


 scalar_t__ TSDB_METER_ID_LEN ;
 int assert (int) ;
 TYPE_1__* mgmtGetMeter (char*) ;
 scalar_t__ mgmtGetTagsLength (TYPE_1__*,scalar_t__) ;
 int mgmtMeterCreateFromMetric (TYPE_1__*) ;

char* mgmtMeterGetTag(STabObj* pMeter, int32_t col, SSchema* pTagColSchema) {
  if (!mgmtMeterCreateFromMetric(pMeter)) {
    return ((void*)0);
  }

  STabObj* pMetric = mgmtGetMeter(pMeter->pTagData);
  int32_t offset = mgmtGetTagsLength(pMetric, col) + TSDB_METER_ID_LEN;
  assert(offset > 0);

  if (pTagColSchema != ((void*)0)) {
    *pTagColSchema = ((SSchema*)pMetric->schema)[pMetric->numOfColumns + col];
  }

  return (pMeter->pTagData + offset);
}
