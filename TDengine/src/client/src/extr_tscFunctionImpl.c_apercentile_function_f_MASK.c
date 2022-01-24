#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_13__ {int /*<<< orphan*/  pHisto; } ;
struct TYPE_12__ {int /*<<< orphan*/  inputType; scalar_t__ hasNull; } ;
struct TYPE_11__ {int /*<<< orphan*/  hasResult; } ;
typedef  TYPE_1__ SResultInfo ;
typedef  TYPE_2__ SQLFunctionCtx ;
typedef  TYPE_3__ SAPercentileInfo ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_SET_FLAG ; 
 double FUNC0 (void*) ; 
 double FUNC1 (void*) ; 
 void* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 double FUNC3 (void*) ; 
 double FUNC4 (void*) ; 
 double FUNC5 (void*) ; 
 double FUNC6 (void*) ; 
 TYPE_1__* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,int) ; 
#define  TSDB_DATA_TYPE_BIGINT 132 
#define  TSDB_DATA_TYPE_DOUBLE 131 
#define  TSDB_DATA_TYPE_FLOAT 130 
#define  TSDB_DATA_TYPE_SMALLINT 129 
#define  TSDB_DATA_TYPE_TINYINT 128 
 TYPE_3__* FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,double) ; 

__attribute__((used)) static void FUNC12(SQLFunctionCtx *pCtx, int32_t index) {
  void *pData = FUNC2(pCtx, index);
  if (pCtx->hasNull && FUNC10(pData, pCtx->inputType)) {
    return;
  }

  SResultInfo *     pResInfo = FUNC7(pCtx);
  SAPercentileInfo *pInfo = FUNC9(pCtx);  // pResInfo->interResultBuf;

  double v = 0;
  switch (pCtx->inputType) {
    case TSDB_DATA_TYPE_TINYINT:
      v = FUNC6(pData);
      break;
    case TSDB_DATA_TYPE_SMALLINT:
      v = FUNC3(pData);
      break;
    case TSDB_DATA_TYPE_BIGINT:
      v = FUNC5(pData);
      break;
    case TSDB_DATA_TYPE_FLOAT:
      v = FUNC1(pData);
      break;
    case TSDB_DATA_TYPE_DOUBLE:
      v = FUNC0(pData);
      break;
    default:
      v = FUNC4(pData);
      break;
  }

  FUNC11(&pInfo->pHisto, v);

  FUNC8(pCtx, 1, 1);
  pResInfo->hasResult = DATA_SET_FLAG;
}