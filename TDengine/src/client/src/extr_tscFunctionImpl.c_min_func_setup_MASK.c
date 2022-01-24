#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_4__ {int /*<<< orphan*/  inputType; scalar_t__ aOutputBuf; } ;
typedef  TYPE_1__ SQLFunctionCtx ;

/* Variables and functions */
 double DBL_MAX ; 
 float FLT_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  INT16_MAX ; 
 int /*<<< orphan*/  INT32_MAX ; 
 int /*<<< orphan*/  INT64_MAX ; 
 int /*<<< orphan*/  INT8_MAX ; 
#define  TSDB_DATA_TYPE_BIGINT 133 
#define  TSDB_DATA_TYPE_DOUBLE 132 
#define  TSDB_DATA_TYPE_FLOAT 131 
#define  TSDB_DATA_TYPE_INT 130 
#define  TSDB_DATA_TYPE_SMALLINT 129 
#define  TSDB_DATA_TYPE_TINYINT 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int type ; 

__attribute__((used)) static bool FUNC3(SQLFunctionCtx *pCtx) {
  if (!FUNC1(pCtx)) {
    return false;  // not initialized since it has been initialized
  }

  FUNC0();

  switch (type) {
    case TSDB_DATA_TYPE_INT:
      *((int32_t *)pCtx->aOutputBuf) = INT32_MAX;
      break;
    case TSDB_DATA_TYPE_FLOAT:
      *((float *)pCtx->aOutputBuf) = FLT_MAX;
      break;
    case TSDB_DATA_TYPE_DOUBLE:
      *((double *)pCtx->aOutputBuf) = DBL_MAX;
      break;
    case TSDB_DATA_TYPE_BIGINT:
      *((int64_t *)pCtx->aOutputBuf) = INT64_MAX;
      break;
    case TSDB_DATA_TYPE_SMALLINT:
      *((int16_t *)pCtx->aOutputBuf) = INT16_MAX;
      break;
    case TSDB_DATA_TYPE_TINYINT:
      *((int8_t *)pCtx->aOutputBuf) = INT8_MAX;
      break;
    default:
      FUNC2("illegal data type:%d in min/max query", pCtx->inputType);
  }

  return true;
}