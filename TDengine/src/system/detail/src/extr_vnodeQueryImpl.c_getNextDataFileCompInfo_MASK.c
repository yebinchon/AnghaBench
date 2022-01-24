#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_9__ {int fileId; } ;
struct TYPE_8__ {TYPE_2__* pQuery; } ;
typedef  TYPE_1__ SQueryRuntimeEnv ;
typedef  TYPE_2__ SQuery ;
typedef  int /*<<< orphan*/  SMeterObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ QUERY_ASC_FORWARD_STEP ; 
 scalar_t__ TSQL_SO_ASC ; 
 scalar_t__ TSQL_SO_DESC ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC4 (int*,TYPE_1__*,scalar_t__) ; 

int32_t FUNC5(SQueryRuntimeEnv *pRuntimeEnv, SMeterObj *pMeterObj, int32_t step) {
  SQuery *pQuery = pRuntimeEnv->pQuery;
  pQuery->fileId += step;

  int32_t fid = 0;
  int32_t order = (step == QUERY_ASC_FORWARD_STEP) ? TSQL_SO_ASC : TSQL_SO_DESC;
  while (1) {
    fid = FUNC4(&pQuery->fileId, pRuntimeEnv, order);

    // no files left, abort
    if (fid < 0) {
      if (step == QUERY_ASC_FORWARD_STEP) {
        FUNC1("QInfo:%p no file to access, try data in cache", FUNC0(pQuery));
      } else {
        FUNC1("QInfo:%p no file to access in desc order, query completed", FUNC0(pQuery));
      }

      FUNC2(pRuntimeEnv);
      pQuery->fileId = -1;
      break;
    }

    if (FUNC3(pMeterObj, pRuntimeEnv, fid) > 0) {
      break;
    }

    /*
     * 1. failed to read blk information from header file or open data file failed
     * 2. header file is empty
     *
     * try next one
     */
    pQuery->fileId += step;

    /* for backwards search, if the first file is not valid, abort */
    if (step < 0 && fid == 0) {
      FUNC2(pRuntimeEnv);
      pQuery->fileId = -1;
      fid = -1;
      break;
    }
  }

  return fid;
}