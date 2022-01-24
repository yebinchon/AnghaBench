#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_8__ ;
typedef  struct TYPE_35__   TYPE_7__ ;
typedef  struct TYPE_34__   TYPE_6__ ;
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;
typedef  struct TYPE_28__   TYPE_18__ ;

/* Type definitions */
struct TYPE_30__ {scalar_t__ numOfElems; } ;
typedef  TYPE_2__ tFilePage ;
typedef  int /*<<< orphan*/  tColModel ;
typedef  size_t int32_t ;
struct TYPE_36__ {int /*<<< orphan*/  meterId; int /*<<< orphan*/  sid; int /*<<< orphan*/  vnode; } ;
struct TYPE_35__ {scalar_t__ reverseIndex; scalar_t__ numOfRes; int lastResRows; int reverseFillRes; size_t* pageList; int numOfPages; int /*<<< orphan*/ * resultInfo; } ;
struct TYPE_32__ {scalar_t__ numOfRowsPerPage; TYPE_8__* pMeterObj; TYPE_1__* pCtx; TYPE_5__* pQuery; } ;
struct TYPE_34__ {TYPE_4__ runtimeEnv; } ;
struct TYPE_33__ {size_t numOfOutputCols; } ;
struct TYPE_31__ {int bytes; void* type; } ;
struct TYPE_29__ {scalar_t__ nStartQueryTimestamp; scalar_t__ aOutputBuf; } ;
struct TYPE_28__ {int /*<<< orphan*/  numOfElems; int /*<<< orphan*/  data; } ;
typedef  scalar_t__ TSKEY ;
typedef  TYPE_3__ SSchema ;
typedef  TYPE_4__ SQueryRuntimeEnv ;
typedef  TYPE_5__ SQuery ;
typedef  TYPE_6__ SMeterQuerySupportObj ;
typedef  TYPE_7__ SMeterQueryInfo ;
typedef  TYPE_8__ SMeterObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 void* TSDB_DATA_TYPE_BIGINT ; 
 int TSDB_MAX_COLUMNS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_2__* FUNC5 (TYPE_6__*,size_t) ; 
 scalar_t__ FUNC6 (TYPE_4__*,TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 TYPE_18__* outputPage ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,TYPE_7__*) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_3__*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,TYPE_7__*) ; 

void FUNC15(SMeterQuerySupportObj *pSupporter, SMeterQueryInfo *pMeterQueryInfo, int32_t numOfResult) {
  SQueryRuntimeEnv *pRuntimeEnv = &pSupporter->runtimeEnv;
  SQuery *          pQuery = pRuntimeEnv->pQuery;

  // no results generated, do nothing for master scan
  if (numOfResult <= 0) {
    if (FUNC1(pRuntimeEnv)) {
      return;
    } else {
      /*
       * There is a case that no result generated during the the supplement scan, and during the main
       * scan also no result generated. The index can be backwards moved.
       *
       * However, if during the main scan, there is a result generated, such as applies count to timestamp, which
       * always generates a result, but applies last query to a NULL column may fail to generate no results during the
       * supplement scan.
       *
       * NOTE:
       * nStartQueryTimestamp is the actually timestamp of current interval, if the actually interval timestamp
       * equals to the recorded timestamp that is acquired during the master scan, backwards one step even
       * there is no results during the supplementary scan.
       */
      TSKEY ts = *(TSKEY *)pRuntimeEnv->pCtx[0].aOutputBuf;
      if (ts == pRuntimeEnv->pCtx[0].nStartQueryTimestamp && pMeterQueryInfo->reverseIndex > 0) {
        FUNC4(pMeterQueryInfo->numOfRes >= 0 && pMeterQueryInfo->reverseIndex > 0 &&
               pMeterQueryInfo->reverseIndex <= pMeterQueryInfo->numOfRes);

        // backward one step from the previous position, the start position is (pMeterQueryInfo->numOfRows-1);
        pMeterQueryInfo->reverseIndex -= 1;
        FUNC10(pSupporter, pMeterQueryInfo);
      }

      return;
    }
  }

  FUNC4(pMeterQueryInfo->lastResRows == 1);
  numOfResult = 1;
  pMeterQueryInfo->lastResRows = 0;

  if (FUNC2(pRuntimeEnv) && pMeterQueryInfo->reverseFillRes == 1) {
    FUNC4(pMeterQueryInfo->numOfRes > 0 && pMeterQueryInfo->reverseIndex > 0 &&
           pMeterQueryInfo->reverseIndex <= pMeterQueryInfo->numOfRes);
    // backward one step from the previous position, the start position is (pMeterQueryInfo->numOfRows-1);
    pMeterQueryInfo->reverseIndex -= 1;
    FUNC10(pSupporter, pMeterQueryInfo);
  } else {
    int32_t    pageId = pMeterQueryInfo->pageList[pMeterQueryInfo->numOfPages - 1];
    tFilePage *pData = FUNC5(pSupporter, pageId);

    // in handling records occuring around '1970-01-01', the aligned start timestamp may be 0.
    TSKEY ts = *(TSKEY *)FUNC6(pRuntimeEnv, pData, pData->numOfElems, 0);

    SMeterObj *pMeterObj = pRuntimeEnv->pMeterObj;
    FUNC8("QInfo:%p vid:%d sid:%d id:%s, save results, ts:%lld, total:%d", FUNC0(pQuery), pMeterObj->vnode,
           pMeterObj->sid, pMeterObj->meterId, ts, pMeterQueryInfo->numOfRes + 1);

    pData->numOfElems += numOfResult;
    pMeterQueryInfo->numOfRes += numOfResult;
    FUNC4(pData->numOfElems <= pRuntimeEnv->numOfRowsPerPage);

    FUNC11(pSupporter, pMeterQueryInfo);

    for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
      FUNC9(&pMeterQueryInfo->resultInfo[i]);
    }

    FUNC14(pSupporter, pMeterQueryInfo);
    FUNC7(pRuntimeEnv);
#if 0
    SSchema sc[TSDB_MAX_COLUMNS] = {0};
    sc[0].type = TSDB_DATA_TYPE_BIGINT;
    sc[0].bytes = 8;

    sc[1].type = TSDB_DATA_TYPE_BIGINT;
    sc[1].bytes = 8;

    UNUSED(sc);
    tColModel *cm = tColModelCreate(sc, pQuery->numOfOutputCols, pRuntimeEnv->numOfRowsPerPage);

//    if (outputPage->numOfElems + numOfResult >= pRuntimeEnv->numOfRowsPerPage)
        tColModelDisplay(cm, outputPage->data, outputPage->numOfElems, pRuntimeEnv->numOfRowsPerPage);
#endif
  }
}