#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ aOutputBuf; } ;
struct TYPE_9__ {scalar_t__ hasResult; int numOfRes; scalar_t__ interResultBuf; } ;
struct TYPE_8__ {scalar_t__ EKey; scalar_t__ lastKey; scalar_t__ hasResult; scalar_t__ SKey; scalar_t__ type; int iOutput; int iLastValue; int dOutput; int dLastValue; } ;
typedef  TYPE_1__ STwaInfo ;
typedef  TYPE_2__ SResultInfo ;
typedef  TYPE_3__ SQLFunctionCtx ;

/* Variables and functions */
 scalar_t__ DATA_SET_FLAG ; 
 TYPE_2__* FUNC0 (TYPE_3__*) ; 
 scalar_t__ TSDB_DATA_TYPE_BIGINT ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_DOUBLE ; 
 scalar_t__ TSDB_DATA_TYPE_TINYINT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 

void FUNC4(SQLFunctionCtx *pCtx) {
  SResultInfo *pResInfo = FUNC0(pCtx);

  STwaInfo *pInfo = (STwaInfo *)pResInfo->interResultBuf;
  FUNC1(pInfo->EKey >= pInfo->lastKey && pInfo->hasResult == pResInfo->hasResult);

  if (pInfo->hasResult != DATA_SET_FLAG) {
    FUNC3(pCtx->aOutputBuf, TSDB_DATA_TYPE_DOUBLE, sizeof(double));
    return;
  }

  if (pInfo->SKey == pInfo->EKey) {
    *(double *)pCtx->aOutputBuf = 0;
  } else if (pInfo->type >= TSDB_DATA_TYPE_TINYINT && pInfo->type <= TSDB_DATA_TYPE_BIGINT) {
    pInfo->iOutput += pInfo->iLastValue * (pInfo->EKey - pInfo->lastKey);
    *(double *)pCtx->aOutputBuf = pInfo->iOutput / (double)(pInfo->EKey - pInfo->SKey);
  } else {
    pInfo->dOutput += pInfo->dLastValue * (pInfo->EKey - pInfo->lastKey);
    *(double *)pCtx->aOutputBuf = pInfo->dOutput / (pInfo->EKey - pInfo->SKey);
  }

  FUNC0(pCtx)->numOfRes = 1;
  FUNC2(FUNC0(pCtx));
}