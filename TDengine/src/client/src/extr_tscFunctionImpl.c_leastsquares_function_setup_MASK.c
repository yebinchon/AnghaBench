#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  startVal; } ;
struct TYPE_11__ {TYPE_1__* param; } ;
struct TYPE_10__ {TYPE_4__* interResultBuf; } ;
struct TYPE_9__ {int /*<<< orphan*/  dKey; } ;
typedef  TYPE_2__ SResultInfo ;
typedef  TYPE_3__ SQLFunctionCtx ;
typedef  TYPE_4__ SLeastsquareInfo ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

__attribute__((used)) static bool FUNC2(SQLFunctionCtx *pCtx) {
  if (!FUNC1(pCtx)) {
    return false;
  }

  SResultInfo *     pResInfo = FUNC0(pCtx);
  SLeastsquareInfo *pInfo = pResInfo->interResultBuf;

  // 2*3 matrix
  pInfo->startVal = pCtx->param[0].dKey;
  return true;
}