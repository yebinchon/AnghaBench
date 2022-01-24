#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_18__ {scalar_t__ sid; char sversion; scalar_t__ vgid; char numOfColumns; char numOfTags; char rowSize; scalar_t__ meterType; scalar_t__ index; TYPE_1__* vpeerDesc; int /*<<< orphan*/  uid; } ;
struct TYPE_17__ {scalar_t__ numOfMeters; } ;
struct TYPE_16__ {int /*<<< orphan*/  meterId; TYPE_7__ meta; } ;
struct TYPE_15__ {char bytes; char colId; } ;
struct TYPE_13__ {char* pRsp; int code; scalar_t__ numOfTotal; } ;
struct TYPE_14__ {TYPE_2__ res; } ;
struct TYPE_12__ {scalar_t__ vnode; } ;
typedef  TYPE_3__ SSqlObj ;
typedef  TYPE_4__ SSchema ;
typedef  TYPE_5__ SMultiMeterMeta ;
typedef  TYPE_6__ SMultiMeterInfoMsg ;
typedef  TYPE_7__ SMeterMeta ;

/* Variables and functions */
 int TSDB_CODE_INVALID_IE ; 
 void* TSDB_CODE_INVALID_VALUE ; 
 int TSDB_CODE_OTHERS ; 
 int TSDB_CODE_SUCCESS ; 
 char TSDB_IE_TYPE_META ; 
 char TSDB_MAX_COLUMNS ; 
 char TSDB_MAX_TAGS ; 
 scalar_t__ TSDB_METER_MTABLE ; 
 int TSDB_VNODES_SUPPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (scalar_t__) ; 
 void* FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  tsMeterMetaKeepTimer ; 
 int /*<<< orphan*/  tscCacheHandle ; 
 int /*<<< orphan*/  FUNC5 (char*,char,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_3__*,scalar_t__) ; 

int FUNC7(SSqlObj *pSql) {
  SSchema *pSchema;
  uint8_t  ieType;
  int32_t  totalNum;
  int32_t  i;

  char *rsp = pSql->res.pRsp;

  ieType = *rsp;
  if (ieType != TSDB_IE_TYPE_META) {
    FUNC5("invalid ie type:%d", ieType);
    pSql->res.code = TSDB_CODE_INVALID_IE;
    pSql->res.numOfTotal = 0;
    return TSDB_CODE_OTHERS;
  }

  rsp++;

  SMultiMeterInfoMsg *pInfo = (SMultiMeterInfoMsg *)rsp;
  totalNum = FUNC1(pInfo->numOfMeters);
  rsp += sizeof(SMultiMeterInfoMsg);

  for (i = 0; i < totalNum; i++) {
    SMultiMeterMeta *pMultiMeta = (SMultiMeterMeta *)rsp;
    SMeterMeta *     pMeta = &pMultiMeta->meta;

    pMeta->sid = FUNC1(pMeta->sid);
    pMeta->sversion = FUNC2(pMeta->sversion);
    pMeta->vgid = FUNC1(pMeta->vgid);
    pMeta->uid = FUNC0(pMeta->uid);

    if (pMeta->sid <= 0 || pMeta->vgid < 0) {
      FUNC5("invalid meter vgid:%d, sid%d", pMeta->vgid, pMeta->sid);
      pSql->res.code = TSDB_CODE_INVALID_VALUE;
      pSql->res.numOfTotal = i;
      return TSDB_CODE_OTHERS;
    }

    pMeta->numOfColumns = FUNC2(pMeta->numOfColumns);

    if (pMeta->numOfTags > TSDB_MAX_TAGS || pMeta->numOfTags < 0) {
      FUNC5("invalid tag value count:%d", pMeta->numOfTags);
      pSql->res.code = TSDB_CODE_INVALID_VALUE;
      pSql->res.numOfTotal = i;
      return TSDB_CODE_OTHERS;
    }

    if (pMeta->numOfTags > TSDB_MAX_TAGS || pMeta->numOfTags < 0) {
      FUNC5("invalid numOfTags:%d", pMeta->numOfTags);
      pSql->res.code = TSDB_CODE_INVALID_VALUE;
      pSql->res.numOfTotal = i;
      return TSDB_CODE_OTHERS;
    }

    if (pMeta->numOfColumns > TSDB_MAX_COLUMNS || pMeta->numOfColumns < 0) {
      FUNC5("invalid numOfColumns:%d", pMeta->numOfColumns);
      pSql->res.code = TSDB_CODE_INVALID_VALUE;
      pSql->res.numOfTotal = i;
      return TSDB_CODE_OTHERS;
    }

    for (int j = 0; j < TSDB_VNODES_SUPPORT; ++j) {
      pMeta->vpeerDesc[j].vnode = FUNC1(pMeta->vpeerDesc[j].vnode);
    }

    pMeta->rowSize = 0;
    rsp += sizeof(SMultiMeterMeta);
    pSchema = (SSchema *)rsp;

    int32_t numOfTotalCols = pMeta->numOfColumns + pMeta->numOfTags;
    for (int j = 0; j < numOfTotalCols; ++j) {
      pSchema->bytes = FUNC2(pSchema->bytes);
      pSchema->colId = FUNC2(pSchema->colId);

      // ignore the tags length
      if (j < pMeta->numOfColumns) {
        pMeta->rowSize += pSchema->bytes;
      }
      pSchema++;
    }

    rsp += numOfTotalCols * sizeof(SSchema);

    int32_t  tagLen = 0;
    SSchema *pTagsSchema = FUNC4(pMeta);

    if (pMeta->meterType == TSDB_METER_MTABLE) {
      for (int32_t j = 0; j < pMeta->numOfTags; ++j) {
        tagLen += pTagsSchema[j].bytes;
      }
    }

    rsp += tagLen;
    int32_t size = (int32_t)(rsp - ((char *)pMeta));  // Consistent with SMeterMeta in cache

    pMeta->index = 0;
    (void)FUNC3(tscCacheHandle, pMultiMeta->meterId, (char *)pMeta, size, tsMeterMetaKeepTimer);
  }

  pSql->res.code = TSDB_CODE_SUCCESS;
  pSql->res.numOfTotal = i;
  FUNC6("%p load multi-metermeta resp complete num:%d", pSql, pSql->res.numOfTotal);
  return TSDB_CODE_SUCCESS;
}