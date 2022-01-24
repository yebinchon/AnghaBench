#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int32_t ;
struct TYPE_18__ {scalar_t__ keyLast; scalar_t__ keyFirst; size_t size; } ;
struct TYPE_17__ {scalar_t__* offset; } ;
struct TYPE_14__ {scalar_t__ offset; } ;
struct TYPE_16__ {scalar_t__ ekey; size_t pos; TYPE_2__ limit; int /*<<< orphan*/  skey; int /*<<< orphan*/  lastKey; } ;
struct TYPE_15__ {TYPE_1__* primaryColBuffer; TYPE_4__* pQuery; } ;
struct TYPE_13__ {scalar_t__ data; } ;
typedef  scalar_t__ TSKEY ;
typedef  TYPE_3__ SQueryRuntimeEnv ;
typedef  TYPE_4__ SQuery ;
typedef  TYPE_5__ SCacheBlock ;
typedef  TYPE_6__ SBlockInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  QUERY_COMPLETED ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(SQueryRuntimeEnv *pRuntimeEnv, SBlockInfo *pBlockInfo, void *pBlock) {
  SQuery *pQuery = pRuntimeEnv->pQuery;

  /*
   *  The actually qualified points that can be skipped needs to be calculated if query is
   *  done in current data block
   */
  if ((pQuery->ekey <= pBlockInfo->keyLast && FUNC1(pQuery)) ||
      (pQuery->ekey >= pBlockInfo->keyFirst && !FUNC1(pQuery))) {
    // force load timestamp data blocks
    if (FUNC0(pQuery)) {
      FUNC4(pRuntimeEnv, 0);
    }

    // update the pQuery->limit.offset value, and pQuery->pos value
    TSKEY *keys = NULL;
    if (FUNC0(pQuery)) {
      keys = (TSKEY *)pRuntimeEnv->primaryColBuffer->data;
    } else {
      keys = (TSKEY *)(((SCacheBlock *)pBlock)->offset[0]);
    }

    int32_t i = 0;
    if (FUNC1(pQuery)) {
      for (i = pQuery->pos; i < pBlockInfo->size && pQuery->limit.offset > 0; ++i) {
        if (keys[i] <= pQuery->ekey) {
          pQuery->limit.offset -= 1;
        } else {
          break;
        }
      }

    } else {
      for (i = pQuery->pos; i >= 0 && pQuery->limit.offset > 0; --i) {
        if (keys[i] >= pQuery->ekey) {
          pQuery->limit.offset -= 1;
        } else {
          break;
        }
      }
    }

    if (((i == pBlockInfo->size || keys[i] > pQuery->ekey) && FUNC1(pQuery)) ||
        ((i < 0 || keys[i] < pQuery->ekey) && !FUNC1(pQuery))) {
      FUNC5(pQuery, QUERY_COMPLETED);
      pQuery->pos = -1;
    } else {
      pQuery->pos = i;
    }
  } else {
    if (FUNC1(pQuery)) {
      pQuery->pos += pQuery->limit.offset;
    } else {
      pQuery->pos -= pQuery->limit.offset;
    }

    FUNC2(pQuery->pos >= 0 && pQuery->pos <= pBlockInfo->size - 1);

    if (FUNC0(pQuery)) {
      pQuery->skey = FUNC4(pRuntimeEnv, pQuery->pos);
    } else {
      pQuery->skey = FUNC3(pBlock, pQuery->pos);
    }

    // update the offset value
    pQuery->lastKey = pQuery->skey;
    pQuery->limit.offset = 0;
  }
}