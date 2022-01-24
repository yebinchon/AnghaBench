#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_10__ {int /*<<< orphan*/  i64Key; } ;
struct TYPE_13__ {int /*<<< orphan*/  size; TYPE_1__ tag; int /*<<< orphan*/  inputType; scalar_t__ hasNull; } ;
struct TYPE_12__ {int /*<<< orphan*/  hasResult; TYPE_2__* interResultBuf; } ;
struct TYPE_11__ {int /*<<< orphan*/ * pTSBuf; } ;
typedef  TYPE_2__ STSCompInfo ;
typedef  int /*<<< orphan*/  STSBuf ;
typedef  TYPE_3__ SResultInfo ;
typedef  TYPE_4__ SQLFunctionCtx ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_SET_FLAG ; 
 void* FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TSDB_KEYSIZE ; 
 scalar_t__ FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(SQLFunctionCtx *pCtx, int32_t index) {
  void *pData = FUNC0(pCtx, index);
  if (pCtx->hasNull && FUNC3(pData, pCtx->inputType)) {
    return;
  }

  SResultInfo *pResInfo = FUNC1(pCtx);
  STSCompInfo *pInfo = pResInfo->interResultBuf;

  STSBuf *pTSbuf = pInfo->pTSBuf;

  FUNC4(pTSbuf, 0, pCtx->tag.i64Key, pData, TSDB_KEYSIZE);
  FUNC2(pCtx, pCtx->size, 1);

  pResInfo->hasResult = DATA_SET_FLAG;
}