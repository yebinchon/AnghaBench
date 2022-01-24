#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_7__ {scalar_t__ aOutputBuf; } ;
struct TYPE_6__ {int /*<<< orphan*/  hasResult; } ;
typedef  TYPE_1__ SSumInfo ;
typedef  TYPE_2__ SQLFunctionCtx ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_SET_FLAG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__,int) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(SQLFunctionCtx *pCtx) {
  int32_t notNullElems = FUNC1(pCtx);

  FUNC0(pCtx, notNullElems, 1);
  SSumInfo *pSumInfo = (SSumInfo *)pCtx->aOutputBuf;

  if (notNullElems > 0) {
    //    pCtx->numOfIteratedElems += notNullElems;
    pSumInfo->hasResult = DATA_SET_FLAG;
  }
}