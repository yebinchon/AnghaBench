#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ hasResult; } ;
struct TYPE_10__ {TYPE_1__* param; } ;
struct TYPE_9__ {scalar_t__ hasResult; scalar_t__ min; scalar_t__ max; } ;
struct TYPE_8__ {scalar_t__ dKey; } ;
typedef  TYPE_2__ SSpreadInfo ;
typedef  TYPE_3__ SQLFunctionCtx ;

/* Variables and functions */
 scalar_t__ DATA_SET_FLAG ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 TYPE_5__* FUNC1 (TYPE_3__*) ; 

void FUNC2(SQLFunctionCtx *pCtx) {
  SSpreadInfo *pData = (SSpreadInfo *)FUNC0(pCtx);
  if (pData->hasResult != DATA_SET_FLAG) {
    return;
  }

  if (pCtx->param[0].dKey > pData->min) {
    pCtx->param[0].dKey = pData->min;
  }

  if (pCtx->param[3].dKey < pData->max) {
    pCtx->param[3].dKey = pData->max;
  }

  //  pCtx->numOfIteratedElems += 1;
  FUNC1(pCtx)->hasResult = DATA_SET_FLAG;
}