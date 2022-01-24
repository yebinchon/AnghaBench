#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  dKey; int /*<<< orphan*/  i64Key; } ;
struct TYPE_11__ {TYPE_2__ v; } ;
typedef  TYPE_3__ tValuePair ;
typedef  scalar_t__ int32_t ;
struct TYPE_14__ {scalar_t__ interResultBuf; } ;
struct TYPE_13__ {int inputType; TYPE_1__* param; } ;
struct TYPE_12__ {scalar_t__ num; TYPE_3__* res; } ;
struct TYPE_9__ {scalar_t__ i64Key; } ;
typedef  TYPE_4__ STopBotInfo ;
typedef  TYPE_5__ SQLFunctionCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_7__* FUNC6 (TYPE_5__*) ; 
#define  TSDB_DATA_TYPE_BIGINT 133 
#define  TSDB_DATA_TYPE_DOUBLE 132 
#define  TSDB_DATA_TYPE_FLOAT 131 
#define  TSDB_DATA_TYPE_INT 130 
#define  TSDB_DATA_TYPE_SMALLINT 129 
#define  TSDB_DATA_TYPE_TINYINT 128 
 scalar_t__ TSDB_FUNC_TOP ; 

bool FUNC7(SQLFunctionCtx *pCtx, int32_t functionId, char *minval, char *maxval) {
  STopBotInfo *pTopBotInfo = (STopBotInfo *)FUNC6(pCtx)->interResultBuf;

  int32_t numOfExistsRes = pTopBotInfo->num;

  // required number of results are not reached, continue load data block
  if (numOfExistsRes < pCtx->param[0].i64Key) {
    return true;
  }

  tValuePair *pRes = pTopBotInfo->res;

  if (functionId == TSDB_FUNC_TOP) {
    switch (pCtx->inputType) {
      case TSDB_DATA_TYPE_TINYINT:
        return FUNC5(maxval) > pRes[0].v.i64Key;
      case TSDB_DATA_TYPE_SMALLINT:
        return FUNC2(maxval) > pRes[0].v.i64Key;
      case TSDB_DATA_TYPE_INT:
        return FUNC3(maxval) > pRes[0].v.i64Key;
      case TSDB_DATA_TYPE_BIGINT:
        return FUNC4(maxval) > pRes[0].v.i64Key;
      case TSDB_DATA_TYPE_FLOAT:
        return FUNC1(maxval) > pRes[0].v.dKey;
      case TSDB_DATA_TYPE_DOUBLE:
        return FUNC0(maxval) > pRes[0].v.dKey;
      default:
        return true;
    }
  } else {
    switch (pCtx->inputType) {
      case TSDB_DATA_TYPE_TINYINT:
        return FUNC5(minval) < pRes[0].v.i64Key;
      case TSDB_DATA_TYPE_SMALLINT:
        return FUNC2(minval) < pRes[0].v.i64Key;
      case TSDB_DATA_TYPE_INT:
        return FUNC3(minval) < pRes[0].v.i64Key;
      case TSDB_DATA_TYPE_BIGINT:
        return FUNC4(minval) < pRes[0].v.i64Key;
      case TSDB_DATA_TYPE_FLOAT:
        return FUNC1(minval) < pRes[0].v.dKey;
      case TSDB_DATA_TYPE_DOUBLE:
        return FUNC0(minval) < pRes[0].v.dKey;
      default:
        return true;
    }
  }
}