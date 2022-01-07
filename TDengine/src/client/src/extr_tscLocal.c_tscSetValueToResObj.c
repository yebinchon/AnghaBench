
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


typedef int int8_t ;
typedef char* int64_t ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_22__ {int numOfColumns; int numOfTags; } ;
struct TYPE_21__ {TYPE_6__* pMeterMeta; } ;
struct TYPE_20__ {char* name; size_t type; int bytes; } ;
struct TYPE_18__ {char* data; } ;
struct TYPE_19__ {int cmd; TYPE_2__ res; } ;
struct TYPE_17__ {int bytes; } ;
struct TYPE_16__ {char* aName; } ;
typedef TYPE_1__ TAOS_FIELD ;
typedef TYPE_2__ SSqlRes ;
typedef TYPE_3__ SSqlObj ;
typedef int SSqlCmd ;
typedef TYPE_4__ SSchema ;
typedef TYPE_5__ SMeterMetaInfo ;
typedef TYPE_6__ SMeterMeta ;


 int TSDB_COL_NAME_LEN ;
 char* TSDB_DATA_NULL_STR ;
 int TSDB_NCHAR_SIZE ;
 scalar_t__ UTIL_METER_IS_METRIC (TYPE_5__*) ;
 scalar_t__ isNull (char*,int) ;
 int sprintf (char*,char*,...) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;
 TYPE_14__* tDataTypeDesc ;
 int taosUcs4ToMbs (char*,int,char*) ;
 TYPE_4__* tsGetSchema (TYPE_6__*) ;
 char* tsGetTagsValue (TYPE_6__*) ;
 TYPE_1__* tscFieldInfoGetField (int *,int) ;
 int tscFieldInfoGetOffset (int *,int) ;
 TYPE_5__* tscGetMeterMetaInfo (int *,int ) ;
 int tscInitResObjForLocalQuery (TYPE_3__*,int,int) ;

__attribute__((used)) static int32_t tscSetValueToResObj(SSqlObj *pSql, int32_t rowLen) {
  SSqlRes *pRes = &pSql->res;


  SSqlCmd * pCmd = &pSql->cmd;
  SMeterMetaInfo *pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);
  SMeterMeta * pMeta = pMeterMetaInfo->pMeterMeta;







  int32_t numOfRows = pMeta->numOfColumns;
  int32_t totalNumOfRows = numOfRows + pMeta->numOfTags;

  if (UTIL_METER_IS_METRIC(pMeterMetaInfo)) {
    numOfRows = pMeta->numOfColumns + pMeta->numOfTags;
  }

  tscInitResObjForLocalQuery(pSql, totalNumOfRows, rowLen);
  SSchema *pSchema = tsGetSchema(pMeta);

  for (int32_t i = 0; i < numOfRows; ++i) {
    TAOS_FIELD *pField = tscFieldInfoGetField(pCmd, 0);
    strncpy(pRes->data + tscFieldInfoGetOffset(pCmd, 0) * totalNumOfRows + pField->bytes * i, pSchema[i].name,
            TSDB_COL_NAME_LEN);

    char *type = tDataTypeDesc[pSchema[i].type].aName;

    pField = tscFieldInfoGetField(pCmd, 1);
    strncpy(pRes->data + tscFieldInfoGetOffset(pCmd, 1) * totalNumOfRows + pField->bytes * i, type, pField->bytes);

    int32_t bytes = pSchema[i].bytes;
    if (pSchema[i].type == 130) {
      bytes = bytes / TSDB_NCHAR_SIZE;
    }

    pField = tscFieldInfoGetField(pCmd, 2);
    *(int32_t *)(pRes->data + tscFieldInfoGetOffset(pCmd, 2) * totalNumOfRows + pField->bytes * i) = bytes;

    pField = tscFieldInfoGetField(pCmd, 3);
    if (i >= pMeta->numOfColumns && pMeta->numOfTags != 0) {
      strncpy(pRes->data + tscFieldInfoGetOffset(pCmd, 3) * totalNumOfRows + pField->bytes * i, "tag",
              strlen("tag") + 1);
    }
  }

  if (UTIL_METER_IS_METRIC(pMeterMetaInfo)) {
    return 0;
  }


  char *pTagValue = tsGetTagsValue(pMeta);
  for (int32_t i = numOfRows; i < totalNumOfRows; ++i) {

    TAOS_FIELD *pField = tscFieldInfoGetField(pCmd, 0);
    strncpy(pRes->data + tscFieldInfoGetOffset(pCmd, 0) * totalNumOfRows + pField->bytes * i, pSchema[i].name,
            TSDB_COL_NAME_LEN);


    pField = tscFieldInfoGetField(pCmd, 1);
    char *type = tDataTypeDesc[pSchema[i].type].aName;
    strncpy(pRes->data + tscFieldInfoGetOffset(pCmd, 1) * totalNumOfRows + pField->bytes * i, type, pField->bytes);


    int32_t bytes = pSchema[i].bytes;
    pField = tscFieldInfoGetField(pCmd, 2);
    if (pSchema[i].type == 130) {
      bytes = bytes / TSDB_NCHAR_SIZE;
    }

    *(int32_t *)(pRes->data + tscFieldInfoGetOffset(pCmd, 2) * totalNumOfRows + pField->bytes * i) = bytes;


    pField = tscFieldInfoGetField(pCmd, 3);
    char *target = pRes->data + tscFieldInfoGetOffset(pCmd, 3) * totalNumOfRows + pField->bytes * i;

    if (isNull(pTagValue, pSchema[i].type)) {
      sprintf(target, "%s", TSDB_DATA_NULL_STR);
    } else {
      switch (pSchema[i].type) {
        case 135:

          strncpy(target, pTagValue, pSchema[i].bytes);
          break;
        case 130:
          taosUcs4ToMbs(pTagValue, pSchema[i].bytes, target);
          break;
        case 132: {





          sprintf(target, "%f", *(float *)pTagValue);

          }
          break;
        case 133: {





          sprintf(target, "%lf", *(double *)pTagValue);

          }
          break;
        case 128:
          sprintf(target, "%d", *(int8_t *)pTagValue);
          break;
        case 129:
          sprintf(target, "%d", *(int16_t *)pTagValue);
          break;
        case 131:
          sprintf(target, "%d", *(int32_t *)pTagValue);
          break;
        case 136:
          sprintf(target, "%lld", *(int64_t *)pTagValue);
          break;
        case 134: {
          char *val = (*((int8_t *)pTagValue) == 0) ? "false" : "true";
          sprintf(target, "%s", val);
          break;
        }
        default:
          break;
      }
    }

    pTagValue += pSchema[i].bytes;
  }

  return 0;
}
