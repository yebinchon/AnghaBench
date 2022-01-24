#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ inputType; scalar_t__ aInputElemBuf; scalar_t__ inputBytes; } ;
struct TYPE_8__ {int /*<<< orphan*/  hasResult; int /*<<< orphan*/  interResultBuf; } ;
struct TYPE_7__ {int /*<<< orphan*/  hasResult; } ;
typedef  TYPE_1__ STwaInfo ;
typedef  TYPE_2__ SResultInfo ;
typedef  TYPE_3__ SQLFunctionCtx ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_3__*) ; 
 scalar_t__ TSDB_DATA_TYPE_BINARY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,size_t) ; 

void FUNC3(SQLFunctionCtx *pCtx) {
  FUNC1(pCtx->inputType == TSDB_DATA_TYPE_BINARY);
  SResultInfo *pResInfo = FUNC0(pCtx);

  FUNC2(pResInfo->interResultBuf, pCtx->aInputElemBuf, (size_t)pCtx->inputBytes);
  pResInfo->hasResult = ((STwaInfo *)pCtx->aInputElemBuf)->hasResult;
}