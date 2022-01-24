#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  double int8_t ;
typedef  double int64_t ;
typedef  scalar_t__ int32_t ;
typedef  double int16_t ;
struct TYPE_14__ {int /*<<< orphan*/  (* xFunction ) (TYPE_3__*) ;} ;
struct TYPE_11__ {scalar_t__ numOfTagCols; TYPE_3__** pTagCtxList; } ;
struct TYPE_13__ {scalar_t__ size; TYPE_1__ tagInfo; } ;
struct TYPE_12__ {int /*<<< orphan*/  superTableQ; } ;
typedef  TYPE_2__ SResultInfo ;
typedef  TYPE_3__ SQLFunctionCtx ;

/* Variables and functions */
 char DATA_SET_FLAG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,double,double,scalar_t__,int) ; 
 double FUNC1 (char*) ; 
 float FUNC2 (char*) ; 
 char* FUNC3 (TYPE_3__*,scalar_t__) ; 
 double FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 double FUNC6 (char*) ; 
 double FUNC7 (char*) ; 
 TYPE_2__* FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
#define  TSDB_DATA_TYPE_BIGINT 133 
#define  TSDB_DATA_TYPE_DOUBLE 132 
#define  TSDB_DATA_TYPE_FLOAT 131 
#define  TSDB_DATA_TYPE_INT 130 
#define  TSDB_DATA_TYPE_SMALLINT 129 
#define  TSDB_DATA_TYPE_TINYINT 128 
 size_t TSDB_FUNC_TAG ; 
 TYPE_6__* aAggs ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int type ; 

__attribute__((used)) static int32_t FUNC12(SQLFunctionCtx *pCtx, int32_t bytes, char *output, bool isMin) {
  int32_t notNullElems = 0;

  FUNC9();

  SResultInfo *pResInfo = FUNC8(pCtx);
  FUNC10(pResInfo->superTableQ);

  for (int32_t i = 0; i < pCtx->size; ++i) {
    char *input = FUNC3(pCtx, i);
    if (input[bytes] != DATA_SET_FLAG) {
      continue;
    }

    switch (type) {
      case TSDB_DATA_TYPE_TINYINT: {
        int8_t v = FUNC7(input);
        FUNC0(pCtx, *(int8_t *)output, v, notNullElems, isMin);
        break;
      };
      case TSDB_DATA_TYPE_SMALLINT: {
        int16_t v = FUNC4(input);
        FUNC0(pCtx, *(int16_t *)output, v, notNullElems, isMin);
        break;
      }
      case TSDB_DATA_TYPE_INT: {
        int32_t v = FUNC5(input);
        if ((*(int32_t *)output < v) ^ isMin) {
          *(int32_t *)output = v;

          for (int32_t i = 0; i < pCtx->tagInfo.numOfTagCols; ++i) {
            SQLFunctionCtx *__ctx = pCtx->tagInfo.pTagCtxList[i];
            aAggs[TSDB_FUNC_TAG].xFunction(__ctx);
          }

          notNullElems++;
        }
        break;
      }
      case TSDB_DATA_TYPE_FLOAT: {
        float v = FUNC2(input);
        FUNC0(pCtx, *(float *)output, v, notNullElems, isMin);
        break;
      }
      case TSDB_DATA_TYPE_DOUBLE: {
        double v = FUNC1(input);
        FUNC0(pCtx, *(double *)output, v, notNullElems, isMin);
        break;
      }
      case TSDB_DATA_TYPE_BIGINT: {
        int64_t v = FUNC6(input);
        FUNC0(pCtx, *(int64_t *)output, v, notNullElems, isMin);
        break;
      };
      default:
        break;
    }
  }

  return notNullElems;
}