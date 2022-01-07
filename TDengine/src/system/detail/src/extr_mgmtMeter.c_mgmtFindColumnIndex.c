
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {scalar_t__ meterType; size_t numOfColumns; scalar_t__ schema; int meterId; int pTagData; } ;
typedef TYPE_1__ STabObj ;
typedef TYPE_2__ SSchema ;


 scalar_t__ TSDB_METER_METRIC ;
 scalar_t__ TSDB_METER_MTABLE ;
 scalar_t__ TSDB_METER_OTABLE ;
 int mError (char*,int ) ;
 TYPE_1__* mgmtGetMeter (int ) ;
 scalar_t__ strcasecmp (int ,char const*) ;

int32_t mgmtFindColumnIndex(STabObj *pMeter, const char *colName) {
  STabObj *pMetric = ((void*)0);
  SSchema *schema = ((void*)0);

  if (pMeter->meterType == TSDB_METER_OTABLE || pMeter->meterType == TSDB_METER_METRIC) {
    schema = (SSchema *)pMeter->schema;
    for (int32_t i = 0; i < pMeter->numOfColumns; i++) {
      if (strcasecmp(schema[i].name, colName) == 0) {
        return i;
      }
    }

  } else if (pMeter->meterType == TSDB_METER_MTABLE) {
    pMetric = mgmtGetMeter(pMeter->pTagData);
    if (pMetric == ((void*)0)) {
      mError("MTable not belongs to any metric, meter: %s", pMeter->meterId);
      return -1;
    }
    schema = (SSchema *)pMetric->schema;
    for (int32_t i = 0; i < pMetric->numOfColumns; i++) {
      if (strcasecmp(schema[i].name, colName) == 0) {
        return i;
      }
    }
  }

  return -1;
}
