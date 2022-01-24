#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_11__ {int /*<<< orphan*/  i64Key; } ;
struct TYPE_14__ {scalar_t__ order; int size; TYPE_1__ tag; } ;
struct TYPE_13__ {int /*<<< orphan*/  hasResult; scalar_t__ interResultBuf; } ;
struct TYPE_12__ {int /*<<< orphan*/ * pTSBuf; } ;
typedef  TYPE_2__ STSCompInfo ;
typedef  int /*<<< orphan*/  STSBuf ;
typedef  TYPE_3__ SResultInfo ;
typedef  TYPE_4__ SQLFunctionCtx ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_SET_FLAG ; 
 char* FUNC0 (TYPE_4__*) ; 
 char* FUNC1 (TYPE_4__*,scalar_t__) ; 
 TYPE_3__* FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,int) ; 
 int TSDB_KEYSIZE ; 
 scalar_t__ TSQL_SO_ASC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void FUNC5(SQLFunctionCtx *pCtx) {
  SResultInfo *pResInfo = FUNC2(pCtx);
  STSBuf *     pTSbuf = ((STSCompInfo *)(pResInfo->interResultBuf))->pTSBuf;

  const char *input = FUNC0(pCtx);

  // primary ts must be existed, so no need to check its existance
  if (pCtx->order == TSQL_SO_ASC) {
    FUNC4(pTSbuf, 0, pCtx->tag.i64Key, input, pCtx->size * TSDB_KEYSIZE);
  } else {
    for (int32_t i = pCtx->size - 1; i >= 0; --i) {
      char *d = FUNC1(pCtx, i);
      FUNC4(pTSbuf, 0, pCtx->tag.i64Key, d, TSDB_KEYSIZE);
    }
  }

  FUNC3(pCtx, pCtx->size, 1);

  pResInfo->hasResult = DATA_SET_FLAG;
}