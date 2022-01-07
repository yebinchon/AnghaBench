
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int nLen; int pz; } ;
typedef TYPE_2__ tVariant ;
typedef scalar_t__ int64_t ;
struct TYPE_11__ {TYPE_1__* pMeterMeta; } ;
struct TYPE_9__ {int precision; } ;
typedef int SSqlCmd ;
typedef TYPE_3__ SMeterMetaInfo ;


 int TSDB_CODE_INVALID_SQL ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 int TSDB_DATA_TYPE_BIGINT ;
 int setErrMsg (int *,char const*) ;
 int strdequote (int ) ;
 char* strnchr (int ,char,int ,int) ;
 int tVariantCreateFromBinary (TYPE_2__*,char*,int ,int ) ;
 int tVariantDestroy (TYPE_2__*) ;
 scalar_t__ tVariantDump (TYPE_2__*,char*,int ) ;
 scalar_t__ taosParseTime (int ,scalar_t__*,int ,int ) ;
 TYPE_3__* tscGetMeterMetaInfo (int *,int ) ;

__attribute__((used)) static int setColumnFilterInfoForTimestamp(SSqlCmd* pCmd, tVariant* pVar) {
  int64_t time = 0;
  const char* msg = "invalid timestamp";

  strdequote(pVar->pz);
  char* seg = strnchr(pVar->pz, '-', pVar->nLen, 0);
  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);

  if (seg != ((void*)0)) {
    if (taosParseTime(pVar->pz, &time, pVar->nLen, pMeterMetaInfo->pMeterMeta->precision) != TSDB_CODE_SUCCESS) {
      setErrMsg(pCmd, msg);
      return TSDB_CODE_INVALID_SQL;
    }
  } else {
    if (tVariantDump(pVar, (char*)&time, TSDB_DATA_TYPE_BIGINT)) {
      setErrMsg(pCmd, msg);
      return TSDB_CODE_INVALID_SQL;
    }
  }

  tVariantDestroy(pVar);
  tVariantCreateFromBinary(pVar, (char*)&time, 0, TSDB_DATA_TYPE_BIGINT);

  return TSDB_CODE_SUCCESS;
}
