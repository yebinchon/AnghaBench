
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_12__ {scalar_t__ numOfColumns; scalar_t__ numOfTags; } ;
struct TYPE_11__ {TYPE_4__* pMeterMeta; } ;
struct TYPE_10__ {size_t bytes; int name; } ;
struct TYPE_9__ {scalar_t__ type; scalar_t__ bytes; int name; } ;
typedef TYPE_1__ TAOS_FIELD ;
typedef int SSqlCmd ;
typedef TYPE_2__ SSchema ;
typedef TYPE_3__ SMeterMetaInfo ;
typedef TYPE_4__ SMeterMeta ;


 scalar_t__ TSDB_CODE_SUCCESS ;
 int TSDB_COL_NAME_LEN ;
 scalar_t__ TSDB_DATA_TYPE_BOOL ;
 scalar_t__ TSDB_DATA_TYPE_NCHAR ;
 size_t TSDB_MAX_BYTES_PER_ROW ;
 scalar_t__ TSDB_MAX_COLUMNS ;
 int setErrMsg (int *,char const*) ;
 scalar_t__ strncasecmp (int ,int ,int ) ;
 TYPE_2__* tsGetSchema (TYPE_4__*) ;
 TYPE_3__* tscGetMeterMetaInfo (int *,int ) ;
 scalar_t__ validateColumnName (int ) ;

bool validateOneColumn(SSqlCmd* pCmd, TAOS_FIELD* pColField) {
  const char* msg1 = "too many columns";
  const char* msg2 = "duplicated column names";
  const char* msg3 = "column length too long";
  const char* msg4 = "invalid data types";
  const char* msg5 = "invalid column name";
  const char* msg6 = "invalid column length";

  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);
  SMeterMeta* pMeterMeta = pMeterMetaInfo->pMeterMeta;


  if (pMeterMeta->numOfColumns >= TSDB_MAX_COLUMNS ||
      pMeterMeta->numOfTags + pMeterMeta->numOfColumns >= TSDB_MAX_COLUMNS) {
    setErrMsg(pCmd, msg1);
    return 0;
  }

  if (pColField->type < TSDB_DATA_TYPE_BOOL || pColField->type > TSDB_DATA_TYPE_NCHAR) {
    setErrMsg(pCmd, msg4);
    return 0;
  }

  if (validateColumnName(pColField->name) != TSDB_CODE_SUCCESS) {
    setErrMsg(pCmd, msg5);
    return 0;
  }

  SSchema* pSchema = tsGetSchema(pMeterMeta);
  int32_t nLen = 0;

  for (int32_t i = 0; i < pMeterMeta->numOfColumns; ++i) {
    nLen += pSchema[i].bytes;
  }

  if (pColField->bytes <= 0) {
    setErrMsg(pCmd, msg6);
    return 0;
  }


  if (nLen + pColField->bytes > TSDB_MAX_BYTES_PER_ROW) {
    setErrMsg(pCmd, msg3);
    return 0;
  }


  for (int32_t i = 0; i < pMeterMeta->numOfTags + pMeterMeta->numOfColumns; ++i) {
    if (strncasecmp(pColField->name, pSchema[i].name, TSDB_COL_NAME_LEN) == 0) {
      setErrMsg(pCmd, msg2);
      return 0;
    }
  }

  return 1;
}
