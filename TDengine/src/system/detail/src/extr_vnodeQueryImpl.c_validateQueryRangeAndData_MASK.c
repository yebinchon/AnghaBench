#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ keyFirst; scalar_t__ keyLast; } ;
struct TYPE_10__ {size_t pos; scalar_t__ ekey; scalar_t__ lastKey; scalar_t__ skey; } ;
struct TYPE_9__ {int /*<<< orphan*/  blockStatus; TYPE_2__* pQuery; } ;
typedef  scalar_t__ TSKEY ;
typedef  TYPE_1__ SQueryRuntimeEnv ;
typedef  TYPE_2__ SQuery ;
typedef  TYPE_3__ SBlockInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static void FUNC4(SQueryRuntimeEnv *pRuntimeEnv, const TSKEY *pPrimaryColumn,
                                      SBlockInfo *pBlockBasicInfo) {
  SQuery *pQuery = pRuntimeEnv->pQuery;

  TSKEY startKey = -1;
  // timestamp qualification check
  if (FUNC0(pRuntimeEnv->blockStatus) && FUNC3(pQuery, pBlockBasicInfo)) {
    startKey = pPrimaryColumn[pQuery->pos];
  } else {
    startKey = pBlockBasicInfo->keyFirst;
    TSKEY endKey = pBlockBasicInfo->keyLast;

    FUNC2((endKey <= pQuery->ekey && FUNC1(pQuery)) ||
           (endKey >= pQuery->ekey && !FUNC1(pQuery)));
  }

  FUNC2((startKey >= pQuery->lastKey && startKey <= pQuery->ekey && pQuery->skey <= pQuery->lastKey &&
          FUNC1(pQuery)) ||
         (startKey <= pQuery->lastKey && startKey >= pQuery->ekey && pQuery->skey >= pQuery->lastKey &&
          !FUNC1(pQuery)));
}