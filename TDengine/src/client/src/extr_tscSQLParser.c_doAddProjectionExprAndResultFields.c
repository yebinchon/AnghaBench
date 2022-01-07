
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_16__ {scalar_t__ columnIndex; int tableIndex; } ;
struct TYPE_15__ {int num; TYPE_5__* ids; int member_0; } ;
struct TYPE_14__ {scalar_t__ numOfColumns; scalar_t__ numOfTags; } ;
struct TYPE_13__ {TYPE_3__* pMeterMeta; } ;
struct TYPE_12__ {int name; int type; int bytes; } ;
typedef int SSqlCmd ;
typedef TYPE_1__ SSchema ;
typedef TYPE_2__ SMeterMetaInfo ;
typedef TYPE_3__ SMeterMeta ;
typedef TYPE_4__ SColumnList ;
typedef TYPE_5__ SColumnIndex ;


 scalar_t__ UTIL_METER_IS_METRIC (TYPE_2__*) ;
 int doAddProjectCol (int *,scalar_t__,scalar_t__,int ) ;
 int insertResultField (int *,scalar_t__,TYPE_4__*,int ,int ,int ) ;
 TYPE_1__* tsGetSchema (TYPE_3__*) ;
 TYPE_2__* tscGetMeterMetaInfo (int *,int ) ;

__attribute__((used)) static int32_t doAddProjectionExprAndResultFields(SSqlCmd* pCmd, SColumnIndex* pIndex, int32_t startPos) {
  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, pIndex->tableIndex);

  int32_t numOfTotalColumns = 0;
  SMeterMeta* pMeterMeta = pMeterMetaInfo->pMeterMeta;
  SSchema* pSchema = tsGetSchema(pMeterMeta);

  if (UTIL_METER_IS_METRIC(pMeterMetaInfo)) {
    numOfTotalColumns = pMeterMeta->numOfColumns + pMeterMeta->numOfTags;
  } else {
    numOfTotalColumns = pMeterMeta->numOfColumns;
  }

  for (int32_t j = 0; j < numOfTotalColumns; ++j) {
    doAddProjectCol(pCmd, startPos + j, j, pIndex->tableIndex);

    pIndex->columnIndex = j;
    SColumnList ids = {0};
    ids.ids[0] = *pIndex;


    ids.num = (j >= pMeterMeta->numOfColumns) ? 0 : 1;

    insertResultField(pCmd, startPos + j, &ids, pSchema[j].bytes, pSchema[j].type, pSchema[j].name);
  }

  return numOfTotalColumns;
}
