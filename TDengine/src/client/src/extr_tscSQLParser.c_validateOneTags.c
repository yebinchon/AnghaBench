
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_14__ {scalar_t__ numOfTags; size_t numOfColumns; } ;
struct TYPE_13__ {TYPE_4__* pMeterMeta; } ;
struct TYPE_12__ {size_t bytes; int name; } ;
struct TYPE_11__ {scalar_t__ type; size_t bytes; int name; } ;
typedef TYPE_1__ TAOS_FIELD ;
typedef int SSqlCmd ;
typedef TYPE_2__ SSchema ;
typedef TYPE_3__ SMeterMetaInfo ;
typedef TYPE_4__ SMeterMeta ;


 scalar_t__ TSDB_CODE_SUCCESS ;
 int TSDB_COL_NAME_LEN ;
 scalar_t__ TSDB_DATA_TYPE_BINARY ;
 scalar_t__ TSDB_DATA_TYPE_BOOL ;
 scalar_t__ TSDB_DATA_TYPE_NCHAR ;
 scalar_t__ TSDB_DATA_TYPE_TIMESTAMP ;
 scalar_t__ TSDB_MAX_TAGS ;
 size_t TSDB_MAX_TAGS_LEN ;
 int setErrMsg (int *,char const*) ;
 int sprintf (char*,char*,scalar_t__) ;
 scalar_t__ strncasecmp (int ,int ,int ) ;
 TYPE_2__* tsGetSchema (TYPE_4__*) ;
 TYPE_2__* tsGetTagSchema (TYPE_4__*) ;
 TYPE_3__* tscGetMeterMetaInfo (int *,int ) ;
 scalar_t__ validateColumnName (int ) ;

bool validateOneTags(SSqlCmd* pCmd, TAOS_FIELD* pTagField) {
  const char* msg1 = "timestamp not allowed in tags";
  const char* msg2 = "duplicated column names";
  const char* msg3 = "tag length too long";
  const char* msg4 = "invalid tag name";
  const char* msg5 = "invalid binary/nchar tag length";
  const char* msg6 = "invalid data type in tags";

  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);
  SMeterMeta* pMeterMeta = pMeterMetaInfo->pMeterMeta;


  if (pMeterMeta->numOfTags == TSDB_MAX_TAGS) {
    char msg[128] = {0};
    sprintf(msg, "tags no more than %d", TSDB_MAX_TAGS);

    setErrMsg(pCmd, msg);
    return 0;
  }


  if (pTagField->type == TSDB_DATA_TYPE_TIMESTAMP) {
    setErrMsg(pCmd, msg1);
    return 0;
  }

  if (pTagField->type < TSDB_DATA_TYPE_BOOL && pTagField->type > TSDB_DATA_TYPE_NCHAR) {
    setErrMsg(pCmd, msg6);
    return 0;
  }

  SSchema* pTagSchema = tsGetTagSchema(pMeterMetaInfo->pMeterMeta);
  int32_t nLen = 0;

  for (int32_t i = 0; i < pMeterMeta->numOfTags; ++i) {
    nLen += pTagSchema[i].bytes;
  }


  if (nLen + pTagField->bytes > TSDB_MAX_TAGS_LEN) {
    setErrMsg(pCmd, msg3);
    return 0;
  }


  if (validateColumnName(pTagField->name) != TSDB_CODE_SUCCESS) {
    setErrMsg(pCmd, msg4);
    return 0;
  }


  if ((pTagField->type == TSDB_DATA_TYPE_BINARY || pTagField->type == TSDB_DATA_TYPE_NCHAR) && pTagField->bytes <= 0) {
    setErrMsg(pCmd, msg5);
    return 0;
  }


  SSchema* pSchema = tsGetSchema(pMeterMeta);

  for (int32_t i = 0; i < pMeterMeta->numOfTags + pMeterMeta->numOfColumns; ++i) {
    if (strncasecmp(pTagField->name, pSchema[i].name, TSDB_COL_NAME_LEN) == 0) {
      setErrMsg(pCmd, msg2);
      return 0;
    }
  }

  return 1;
}
