#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_14__ {TYPE_4__* pCtx; } ;
struct TYPE_13__ {char* aOutputBuf; scalar_t__ outputBytes; } ;
struct TYPE_10__ {scalar_t__ numOfOutputCols; } ;
struct TYPE_12__ {TYPE_1__ fieldsInfo; } ;
struct TYPE_11__ {scalar_t__ resBytes; scalar_t__ functionId; } ;
typedef  TYPE_2__ SSqlExpr ;
typedef  TYPE_3__ SSqlCmd ;
typedef  TYPE_4__ SQLFunctionCtx ;
typedef  TYPE_5__ SLocalReducer ;

/* Variables and functions */
 scalar_t__ TSDB_FUNC_TAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,size_t) ; 
 TYPE_2__* FUNC5 (TYPE_3__*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(SSqlCmd *pCmd, int32_t numOfRes, SLocalReducer *pLocalReducer) {
  int32_t maxBufSize = 0;  // find the max tags column length to prepare the buffer
  for (int32_t k = 0; k < pCmd->fieldsInfo.numOfOutputCols; ++k) {
    SSqlExpr *pExpr = FUNC5(pCmd, k);
    if (maxBufSize < pExpr->resBytes && pExpr->functionId == TSDB_FUNC_TAG) {
      maxBufSize = pExpr->resBytes;
    }
  }

  FUNC0(maxBufSize >= 0);

  char *buf = FUNC2((size_t) maxBufSize);
  for (int32_t k = 0; k < pCmd->fieldsInfo.numOfOutputCols; ++k) {
    SSqlExpr *pExpr = FUNC5(pCmd, k);
    if (pExpr->functionId != TSDB_FUNC_TAG) {
      continue;
    }

    int32_t inc = numOfRes - 1;  // tsdb_func_tag function only produce one row of result
    FUNC4(buf, 0, (size_t)maxBufSize);

    SQLFunctionCtx *pCtx = &pLocalReducer->pCtx[k];
    FUNC3(buf, pCtx->aOutputBuf, (size_t)pCtx->outputBytes);

    for (int32_t i = 0; i < inc; ++i) {
      pCtx->aOutputBuf += pCtx->outputBytes;
      FUNC3(pCtx->aOutputBuf, buf, (size_t)pCtx->outputBytes);
    }
  }

  FUNC1(buf);
}