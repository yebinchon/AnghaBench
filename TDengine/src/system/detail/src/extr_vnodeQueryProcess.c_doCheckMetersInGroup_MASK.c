#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
typedef  size_t int32_t ;
struct TYPE_20__ {size_t numOfFiles; int /*<<< orphan*/ * pHeaderFiles; } ;
struct TYPE_24__ {TYPE_1__ runtimeEnv; } ;
struct TYPE_23__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_21__ {int pointsRead; } ;
struct TYPE_22__ {TYPE_5__* pMeterQuerySupporter; TYPE_2__ query; } ;
typedef  TYPE_1__ SQueryRuntimeEnv ;
typedef  TYPE_2__ SQuery ;
typedef  TYPE_3__ SQInfo ;
typedef  TYPE_4__ SPointInterpoSupporter ;
typedef  TYPE_5__ SMeterQuerySupportObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int*,int*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int,int,TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int64_t FUNC12(SQInfo *pQInfo, int32_t index, int32_t start) {
  SQuery *               pQuery = &pQInfo->query;
  SMeterQuerySupportObj *pSupporter = pQInfo->pMeterQuerySupporter;
  SQueryRuntimeEnv *     pRuntimeEnv = &pSupporter->runtimeEnv;

  bool dataInDisk = true;
  bool dataInCache = true;
  if (!FUNC5(pQInfo, &dataInDisk, &dataInCache, index, start)) {
    return 0;
  }

#if DEFAULT_IO_ENGINE == IO_ENGINE_MMAP
  for (int32_t i = 0; i < pRuntimeEnv->numOfFiles; ++i) {
    FUNC10(&pRuntimeEnv->pHeaderFiles[i]);
  }
#endif

  SPointInterpoSupporter pointInterpSupporter = {0};
  FUNC8(pQuery, &pointInterpSupporter);

  if (!FUNC6(dataInDisk, dataInCache, pSupporter, &pointInterpSupporter)) {
    FUNC7(&pointInterpSupporter);
    return 0;
  }

  /*
   * here we set the value for before and after the specified time into the
   * parameter for interpolation query
   */
  FUNC9(pQInfo, &pointInterpSupporter);
  FUNC7(&pointInterpSupporter);

  FUNC11(pRuntimeEnv);

  // first/last_row query, do not invoke the finalize for super table query
  if (!FUNC4(pQuery)) {
    FUNC1(pRuntimeEnv);
  }

  int64_t numOfRes = FUNC3(pRuntimeEnv);
  FUNC0(numOfRes == 1 || numOfRes == 0);

  // accumulate the point interpolation result
  if (numOfRes > 0) {
    pQuery->pointsRead += numOfRes;
    FUNC2(pRuntimeEnv, numOfRes);
  }

  return numOfRes;
}