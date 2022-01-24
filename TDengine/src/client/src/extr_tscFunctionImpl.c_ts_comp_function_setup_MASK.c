#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  tsOrder; } ;
struct TYPE_11__ {int /*<<< orphan*/  order; } ;
struct TYPE_10__ {TYPE_1__* interResultBuf; } ;
struct TYPE_9__ {TYPE_5__* pTSBuf; } ;
typedef  TYPE_1__ STSCompInfo ;
typedef  TYPE_2__ SResultInfo ;
typedef  TYPE_3__ SQLFunctionCtx ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_5__* FUNC2 (int) ; 

__attribute__((used)) static bool FUNC3(SQLFunctionCtx *pCtx) {
  if (!FUNC1(pCtx)) {
    return false;  // not initialized since it has been initialized
  }

  SResultInfo *pResInfo = FUNC0(pCtx);
  STSCompInfo *pInfo = pResInfo->interResultBuf;

  pInfo->pTSBuf = FUNC2(false);
  pInfo->pTSBuf->tsOrder = pCtx->order;
  return true;
}