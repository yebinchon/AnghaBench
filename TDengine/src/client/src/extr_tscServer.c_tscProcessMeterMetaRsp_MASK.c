#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int int32_t ;
struct TYPE_16__ {scalar_t__ sid; int sversion; scalar_t__ vgid; int numOfColumns; char numOfTags; int rowSize; scalar_t__ meterType; scalar_t__ index; TYPE_2__* vpeerDesc; int /*<<< orphan*/  uid; } ;
struct TYPE_15__ {TYPE_6__* pMeterMeta; int /*<<< orphan*/  name; } ;
struct TYPE_14__ {int bytes; int colId; } ;
struct TYPE_11__ {char* pRsp; } ;
struct TYPE_13__ {int /*<<< orphan*/  cmd; TYPE_1__ res; } ;
struct TYPE_12__ {scalar_t__ vnode; } ;
typedef  TYPE_3__ SSqlObj ;
typedef  TYPE_4__ SSchema ;
typedef  TYPE_5__ SMeterMetaInfo ;
typedef  TYPE_6__ SMeterMeta ;

/* Variables and functions */
 int TSDB_CODE_INVALID_IE ; 
 int TSDB_CODE_INVALID_VALUE ; 
 int TSDB_CODE_OTHERS ; 
 char TSDB_IE_TYPE_META ; 
 int TSDB_MAX_COLUMNS ; 
 char TSDB_MAX_TAGS ; 
 scalar_t__ TSDB_METER_MTABLE ; 
 int TSDB_VNODES_SUPPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (scalar_t__) ; 
 void* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void**,int) ; 
 TYPE_4__* FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  tsMeterMetaKeepTimer ; 
 int /*<<< orphan*/  tscCacheHandle ; 
 int /*<<< orphan*/  FUNC6 (char*,char,...) ; 
 TYPE_5__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC8(SSqlObj *pSql) {
  SMeterMeta *pMeta;
  SSchema *   pSchema;
  uint8_t     ieType;

  char *rsp = pSql->res.pRsp;

  ieType = *rsp;
  if (ieType != TSDB_IE_TYPE_META) {
    FUNC6("invalid ie type:%d", ieType);
    return TSDB_CODE_INVALID_IE;
  }

  rsp++;
  pMeta = (SMeterMeta *)rsp;

  pMeta->sid = FUNC1(pMeta->sid);
  pMeta->sversion = FUNC2(pMeta->sversion);
  pMeta->vgid = FUNC1(pMeta->vgid);
  pMeta->uid = FUNC0(pMeta->uid);

  if (pMeta->sid < 0 || pMeta->vgid < 0) {
    FUNC6("invalid meter vgid:%d, sid%d", pMeta->vgid, pMeta->sid);
    return TSDB_CODE_INVALID_VALUE;
  }

  pMeta->numOfColumns = FUNC2(pMeta->numOfColumns);

  if (pMeta->numOfTags > TSDB_MAX_TAGS || pMeta->numOfTags < 0) {
    FUNC6("invalid tag value count:%d", pMeta->numOfTags);
    return TSDB_CODE_INVALID_VALUE;
  }

  if (pMeta->numOfTags > TSDB_MAX_TAGS || pMeta->numOfTags < 0) {
    FUNC6("invalid numOfTags:%d", pMeta->numOfTags);
    return TSDB_CODE_INVALID_VALUE;
  }

  if (pMeta->numOfColumns > TSDB_MAX_COLUMNS || pMeta->numOfColumns < 0) {
    FUNC6("invalid numOfColumns:%d", pMeta->numOfColumns);
    return TSDB_CODE_INVALID_VALUE;
  }

  for (int i = 0; i < TSDB_VNODES_SUPPORT; ++i) {
    pMeta->vpeerDesc[i].vnode = FUNC1(pMeta->vpeerDesc[i].vnode);
  }

  pMeta->rowSize = 0;
  rsp += sizeof(SMeterMeta);
  pSchema = (SSchema *)rsp;

  int32_t numOfTotalCols = pMeta->numOfColumns + pMeta->numOfTags;
  for (int i = 0; i < numOfTotalCols; ++i) {
    pSchema->bytes = FUNC2(pSchema->bytes);
    pSchema->colId = FUNC2(pSchema->colId);

    // ignore the tags length
    if (i < pMeta->numOfColumns) {
      pMeta->rowSize += pSchema->bytes;
    }
    pSchema++;
  }

  rsp += numOfTotalCols * sizeof(SSchema);

  int32_t  tagLen = 0;
  SSchema *pTagsSchema = FUNC5(pMeta);

  if (pMeta->meterType == TSDB_METER_MTABLE) {
    for (int32_t i = 0; i < pMeta->numOfTags; ++i) {
      tagLen += pTagsSchema[i].bytes;
    }
  }

  rsp += tagLen;
  int32_t size = (int32_t)(rsp - (char *)pMeta);

  // pMeta->index = rand() % TSDB_VNODES_SUPPORT;
  pMeta->index = 0;

  // todo add one more function: taosAddDataIfNotExists();
  SMeterMetaInfo *pMeterMetaInfo = FUNC7(&pSql->cmd, 0);
  FUNC4(tscCacheHandle, (void **)&(pMeterMetaInfo->pMeterMeta), false);

  pMeterMetaInfo->pMeterMeta = (SMeterMeta *)FUNC3(tscCacheHandle, pMeterMetaInfo->name, (char *)pMeta,
                                                                  size, tsMeterMetaKeepTimer);
  if (pMeterMetaInfo->pMeterMeta == NULL) return 0;

  return TSDB_CODE_OTHERS;
}