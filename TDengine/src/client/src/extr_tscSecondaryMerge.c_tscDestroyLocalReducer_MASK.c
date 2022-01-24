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
typedef  size_t int32_t ;
struct TYPE_12__ {TYPE_6__* pTags; TYPE_6__* prevValues; } ;
struct TYPE_18__ {size_t numOfBuffer; scalar_t__ numOfCompleted; TYPE_6__** pLocalDataSrc; int /*<<< orphan*/  numOfVnode; int /*<<< orphan*/  resColModel; int /*<<< orphan*/  pDesc; int /*<<< orphan*/  pExtMemBuffer; TYPE_6__* discardData; TYPE_6__* pFinalRes; TYPE_6__* pBufForInterpo; TYPE_6__* pLoserTree; TYPE_6__* pResInfo; TYPE_6__* pResultBuf; TYPE_6__* pTempBuffer; TYPE_6__* prevRowOfInput; TYPE_6__* pCtx; TYPE_1__ interpolationInfo; int /*<<< orphan*/  status; } ;
struct TYPE_17__ {struct TYPE_17__* param; struct TYPE_17__* interResultBuf; int /*<<< orphan*/  tag; } ;
struct TYPE_13__ {size_t numOfOutputCols; } ;
struct TYPE_16__ {TYPE_2__ fieldsInfo; } ;
struct TYPE_14__ {int /*<<< orphan*/ * pLocalReducer; } ;
struct TYPE_15__ {TYPE_5__ cmd; TYPE_3__ res; } ;
typedef  TYPE_3__ SSqlRes ;
typedef  TYPE_4__ SSqlObj ;
typedef  TYPE_5__ SSqlCmd ;
typedef  TYPE_6__ SQLFunctionCtx ;
typedef  TYPE_7__ SLocalReducer ;

/* Variables and functions */
 size_t TSC_LOCALREDUCE_IN_PROGRESS ; 
 int /*<<< orphan*/  TSC_LOCALREDUCE_READY ; 
 int /*<<< orphan*/  TSC_LOCALREDUCE_TOBE_FREED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_4__*,...) ; 

void FUNC8(SSqlObj *pSql) {
  if (pSql == NULL) {
    return;
  }

  FUNC7("%p start to free local reducer", pSql);
  SSqlRes *pRes = &(pSql->res);
  if (pRes->pLocalReducer == NULL) {
    FUNC7("%p local reducer has been freed, abort", pSql);
    return;
  }

  SSqlCmd *pCmd = &pSql->cmd;

  // there is no more result, so we release all allocated resource
  SLocalReducer *pLocalReducer = (SLocalReducer*)FUNC0(&pRes->pLocalReducer, NULL);
  if (pLocalReducer != NULL) {
    int32_t status = 0;
    while ((status = FUNC1(&pLocalReducer->status, TSC_LOCALREDUCE_READY,
                                                    TSC_LOCALREDUCE_TOBE_FREED)) == TSC_LOCALREDUCE_IN_PROGRESS) {
      FUNC4(100);
      FUNC7("%p waiting for delete procedure, status: %d", pSql, status);
    }

    FUNC5(pLocalReducer->interpolationInfo.prevValues);
    FUNC5(pLocalReducer->interpolationInfo.pTags);

    if (pLocalReducer->pCtx != NULL) {
      for(int32_t i = 0; i < pCmd->fieldsInfo.numOfOutputCols; ++i) {
        SQLFunctionCtx *pCtx = &pLocalReducer->pCtx[i];
        FUNC3(&pCtx->tag);
      }

      FUNC5(pLocalReducer->pCtx);
    }


    FUNC5(pLocalReducer->prevRowOfInput);

    FUNC5(pLocalReducer->pTempBuffer);
    FUNC5(pLocalReducer->pResultBuf);

    if (pLocalReducer->pResInfo != NULL) {
      for (int32_t i = 0; i < pCmd->fieldsInfo.numOfOutputCols; ++i) {
        FUNC5(pLocalReducer->pResInfo[i].interResultBuf);
      }

      FUNC5(pLocalReducer->pResInfo);
    }

    if (pLocalReducer->pLoserTree) {
      FUNC5(pLocalReducer->pLoserTree->param);
      FUNC5(pLocalReducer->pLoserTree);
    }

    FUNC5(pLocalReducer->pBufForInterpo);

    FUNC5(pLocalReducer->pFinalRes);
    FUNC5(pLocalReducer->discardData);

    FUNC6(pLocalReducer->pExtMemBuffer, pLocalReducer->pDesc, pLocalReducer->resColModel,
                              pLocalReducer->numOfVnode);
    for (int32_t i = 0; i < pLocalReducer->numOfBuffer; ++i) {
      FUNC5(pLocalReducer->pLocalDataSrc[i]);
    }

    pLocalReducer->numOfBuffer = 0;
    pLocalReducer->numOfCompleted = 0;
    FUNC2(pLocalReducer);
  } else {
    FUNC7("%p already freed or another free function is invoked", pSql);
  }

  FUNC7("%p free local reducer finished", pSql);
}