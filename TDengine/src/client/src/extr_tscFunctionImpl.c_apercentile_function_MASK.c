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
typedef  scalar_t__ int32_t ;
struct TYPE_13__ {int /*<<< orphan*/  pHisto; } ;
struct TYPE_12__ {scalar_t__ size; scalar_t__ hasNull; int /*<<< orphan*/  inputType; } ;
struct TYPE_11__ {int /*<<< orphan*/  hasResult; } ;
typedef  TYPE_1__ SResultInfo ;
typedef  TYPE_2__ SQLFunctionCtx ;
typedef  TYPE_3__ SAPercentileInfo ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_SET_FLAG ; 
 double FUNC0 (char*) ; 
 double FUNC1 (char*) ; 
 char* FUNC2 (TYPE_2__*,scalar_t__) ; 
 double FUNC3 (char*) ; 
 double FUNC4 (char*) ; 
 double FUNC5 (char*) ; 
 double FUNC6 (char*) ; 
 TYPE_1__* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__,int) ; 
#define  TSDB_DATA_TYPE_BIGINT 132 
#define  TSDB_DATA_TYPE_DOUBLE 131 
#define  TSDB_DATA_TYPE_FLOAT 130 
#define  TSDB_DATA_TYPE_SMALLINT 129 
#define  TSDB_DATA_TYPE_TINYINT 128 
 int /*<<< orphan*/  FUNC9 (int) ; 
 TYPE_3__* FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,double) ; 

__attribute__((used)) static void FUNC13(SQLFunctionCtx *pCtx) {
  int32_t notNullElems = 0;

  SResultInfo *     pResInfo = FUNC7(pCtx);
  SAPercentileInfo *pInfo = FUNC10(pCtx);

  for (int32_t i = 0; i < pCtx->size; ++i) {
    char *data = FUNC2(pCtx, i);
    if (pCtx->hasNull && FUNC11(data, pCtx->inputType)) {
      continue;
    }

    notNullElems += 1;
    double v = 0;

    switch (pCtx->inputType) {
      case TSDB_DATA_TYPE_TINYINT:
        v = FUNC6(data);
        break;
      case TSDB_DATA_TYPE_SMALLINT:
        v = FUNC3(data);
        break;
      case TSDB_DATA_TYPE_BIGINT:
        v = FUNC5(data);
        break;
      case TSDB_DATA_TYPE_FLOAT:
        v = FUNC1(data);
        break;
      case TSDB_DATA_TYPE_DOUBLE:
        v = FUNC0(data);
        break;
      default:
        v = FUNC4(data);
        break;
    }

    FUNC12(&pInfo->pHisto, v);
  }

  if (!pCtx->hasNull) {
    FUNC9(pCtx->size == notNullElems);
  }

  FUNC8(pCtx, notNullElems, 1);

  if (notNullElems > 0) {
    pResInfo->hasResult = DATA_SET_FLAG;
  }
}