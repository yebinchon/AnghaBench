#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int order; } ;
struct TYPE_14__ {TYPE_1__ cur; } ;
struct TYPE_13__ {int /*<<< orphan*/  skey; int /*<<< orphan*/  lastKey; int /*<<< orphan*/  ekey; int /*<<< orphan*/  over; } ;
struct TYPE_12__ {int /*<<< orphan*/  endPos; int /*<<< orphan*/  startPos; TYPE_5__* pTSBuf; int /*<<< orphan*/  nextPos; TYPE_4__* pQuery; } ;
struct TYPE_11__ {int /*<<< orphan*/  cur; int /*<<< orphan*/  end; int /*<<< orphan*/  next; int /*<<< orphan*/  start; int /*<<< orphan*/  lastKey; int /*<<< orphan*/  overStatus; } ;
typedef  TYPE_2__ SQueryStatus ;
typedef  TYPE_3__ SQueryRuntimeEnv ;
typedef  TYPE_4__ SQuery ;

/* Variables and functions */
 int /*<<< orphan*/  QUERY_NOT_COMPLETED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSKEY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC4(SQueryRuntimeEnv *pRuntimeEnv, SQueryStatus *pStatus) {
  SQuery *pQuery = pRuntimeEnv->pQuery;

  pStatus->overStatus = pQuery->over;
  pStatus->lastKey = pQuery->lastKey;

  pStatus->start = pRuntimeEnv->startPos;
  pStatus->next = pRuntimeEnv->nextPos;
  pStatus->end = pRuntimeEnv->endPos;

  pStatus->cur = FUNC2(pRuntimeEnv->pTSBuf);  // save the cursor

  if (pRuntimeEnv->pTSBuf) {
    pRuntimeEnv->pTSBuf->cur.order ^= 1;
    FUNC3(pRuntimeEnv->pTSBuf);
  }

  FUNC1(pQuery, QUERY_NOT_COMPLETED);

  FUNC0(pQuery->skey, pQuery->ekey, TSKEY);
  pQuery->lastKey = pQuery->skey;
  pRuntimeEnv->startPos = pRuntimeEnv->endPos;
}