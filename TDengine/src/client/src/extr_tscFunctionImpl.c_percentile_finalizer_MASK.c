#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ numOfElems; int /*<<< orphan*/  pOrderDesc; } ;
typedef  TYPE_2__ tMemBucket ;
struct TYPE_16__ {TYPE_2__* pMemBucket; } ;
struct TYPE_15__ {int /*<<< orphan*/  outputBytes; int /*<<< orphan*/  outputType; scalar_t__ aOutputBuf; TYPE_1__* param; } ;
struct TYPE_14__ {scalar_t__ interResultBuf; } ;
struct TYPE_12__ {scalar_t__ nType; double i64Key; double dKey; } ;
typedef  TYPE_3__ SResultInfo ;
typedef  TYPE_4__ SQLFunctionCtx ;
typedef  TYPE_5__ SPercentileInfo ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_4__*) ; 
 scalar_t__ TSDB_DATA_TYPE_INT ; 
 double FUNC1 (TYPE_2__*,double) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(SQLFunctionCtx *pCtx) {
  double v = pCtx->param[0].nType == TSDB_DATA_TYPE_INT ? pCtx->param[0].i64Key : pCtx->param[0].dKey;

  SResultInfo *pResInfo = FUNC0(pCtx);
  tMemBucket * pMemBucket = ((SPercentileInfo *)pResInfo->interResultBuf)->pMemBucket;

  if (pMemBucket->numOfElems > 0) {  // check for null
    *(double *)pCtx->aOutputBuf = FUNC1(pMemBucket, v);
  } else {
    FUNC3(pCtx->aOutputBuf, pCtx->outputType, pCtx->outputBytes);
  }

  FUNC5(pMemBucket->pOrderDesc);
  FUNC4(pMemBucket);

  FUNC2(FUNC0(pCtx));
}