#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_12__ {int /*<<< orphan*/  inputType; scalar_t__ hasNull; } ;
struct TYPE_11__ {TYPE_1__* interResultBuf; } ;
struct TYPE_10__ {scalar_t__ stage; double avg; int /*<<< orphan*/  res; } ;
typedef  TYPE_1__ SStddevInfo ;
typedef  TYPE_2__ SResultInfo ;
typedef  TYPE_3__ SQLFunctionCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 TYPE_2__* FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int,int) ; 
#define  TSDB_DATA_TYPE_BIGINT 133 
#define  TSDB_DATA_TYPE_DOUBLE 132 
#define  TSDB_DATA_TYPE_FLOAT 131 
#define  TSDB_DATA_TYPE_INT 130 
#define  TSDB_DATA_TYPE_SMALLINT 129 
#define  TSDB_DATA_TYPE_TINYINT 128 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(SQLFunctionCtx *pCtx, int32_t index) {
  // the second stage to calculate standard deviation
  SResultInfo *pResInfo = FUNC7(pCtx);
  SStddevInfo *pStd = pResInfo->interResultBuf;

  /* the first stage is to calculate average value */
  if (pStd->stage == 0) {
    FUNC10(pCtx, index);
  } else {
    double avg = pStd->avg;
    void * pData = FUNC2(pCtx, index);

    if (pCtx->hasNull && FUNC11(pData, pCtx->inputType)) {
      return;
    }

    switch (pCtx->inputType) {
      case TSDB_DATA_TYPE_INT: {
        pStd->res += FUNC8(FUNC4(pData) - avg);
        break;
      }
      case TSDB_DATA_TYPE_FLOAT: {
        pStd->res += FUNC8(FUNC1(pData) - avg);
        break;
      }
      case TSDB_DATA_TYPE_DOUBLE: {
        pStd->res += FUNC8(FUNC0(pData) - avg);
        break;
      }
      case TSDB_DATA_TYPE_BIGINT: {
        pStd->res += FUNC8(FUNC5(pData) - avg);
        break;
      }
      case TSDB_DATA_TYPE_SMALLINT: {
        pStd->res += FUNC8(FUNC3(pData) - avg);
        break;
      }
      case TSDB_DATA_TYPE_TINYINT: {
        pStd->res += FUNC8(FUNC6(pData) - avg);
        break;
      }
      default:
        FUNC12("stddev function not support data type:%d", pCtx->inputType);
    }

    FUNC9(pCtx, 1, 1);
  }
}