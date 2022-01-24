#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int32_t ;
struct TYPE_17__ {int vnodeIndex; } ;
struct TYPE_16__ {TYPE_7__ cur; int /*<<< orphan*/  tag; } ;
struct TYPE_14__ {int /*<<< orphan*/ * pTSBuf; TYPE_2__* pCtx; } ;
struct TYPE_15__ {TYPE_3__ runtimeEnv; int /*<<< orphan*/ * pMeterSidExtInfo; int /*<<< orphan*/  pSidSet; } ;
struct TYPE_12__ {int /*<<< orphan*/  i64Key; } ;
struct TYPE_13__ {TYPE_1__ tag; } ;
typedef  TYPE_3__ SQueryRuntimeEnv ;
typedef  int /*<<< orphan*/  SOutputRes ;
typedef  TYPE_4__ SMeterQuerySupportObj ;
typedef  TYPE_5__ SMeterQueryInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 

void FUNC5(SMeterQuerySupportObj *pSupporter, SOutputRes *outputRes, int32_t meterIdx, int32_t groupIdx,
                         SMeterQueryInfo *pMeterQueryInfo) {
  SQueryRuntimeEnv *pRuntimeEnv = &pSupporter->runtimeEnv;

  FUNC1(pRuntimeEnv, &outputRes[groupIdx]);
  FUNC0(pRuntimeEnv);

  FUNC4(pSupporter->pSidSet, pRuntimeEnv, pSupporter->pMeterSidExtInfo[meterIdx]);

  // set the right cursor position for ts buffer
  if (pSupporter->runtimeEnv.pTSBuf != NULL) {
    if (pMeterQueryInfo->cur.vnodeIndex == -1) {
      pMeterQueryInfo->tag = pRuntimeEnv->pCtx[0].tag.i64Key;

      FUNC2(pSupporter->runtimeEnv.pTSBuf, 0, pMeterQueryInfo->tag);
    } else {
      FUNC3(pSupporter->runtimeEnv.pTSBuf, &pMeterQueryInfo->cur);
    }
  }
}