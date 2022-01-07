
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_9__ {int numOfTags; int numOfColumns; } ;
struct TYPE_8__ {TYPE_5__* pMeterMeta; } ;
struct TYPE_7__ {int colId; } ;
typedef int SSqlCmd ;
typedef TYPE_1__ SSchema ;
typedef TYPE_2__ SMeterMetaInfo ;


 scalar_t__ UTIL_METER_IS_METRIC (TYPE_2__*) ;
 TYPE_1__* tsGetSchema (TYPE_5__*) ;
 TYPE_2__* tscGetMeterMetaInfo (int *,int ) ;

bool tscValidateColumnId(SSqlCmd* pCmd, int32_t colId) {
  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);
  if (pMeterMetaInfo->pMeterMeta == ((void*)0)) {
    return 0;
  }

  if (colId == -1 && UTIL_METER_IS_METRIC(pMeterMetaInfo)) {
    return 1;
  }

  SSchema* pSchema = tsGetSchema(pMeterMetaInfo->pMeterMeta);
  int32_t numOfTotal = pMeterMetaInfo->pMeterMeta->numOfTags + pMeterMetaInfo->pMeterMeta->numOfColumns;

  for (int32_t i = 0; i < numOfTotal; ++i) {
    if (pSchema[i].colId == colId) {
      return 1;
    }
  }

  return 0;
}
