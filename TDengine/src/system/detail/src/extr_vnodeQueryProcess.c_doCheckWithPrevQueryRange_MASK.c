#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  pMeterQInfo; TYPE_4__* pMeterObj; } ;
struct TYPE_14__ {int /*<<< orphan*/  meterId; int /*<<< orphan*/  sid; int /*<<< orphan*/  vnode; } ;
struct TYPE_13__ {scalar_t__ rawEKey; } ;
struct TYPE_11__ {scalar_t__ ekey; } ;
struct TYPE_12__ {TYPE_1__ query; TYPE_3__* pMeterQuerySupporter; } ;
typedef  scalar_t__ TSKEY ;
typedef  TYPE_1__ SQuery ;
typedef  TYPE_2__ SQInfo ;
typedef  TYPE_3__ SMeterQuerySupportObj ;
typedef  TYPE_4__ SMeterObj ;
typedef  TYPE_5__ SMeterDataInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,scalar_t__) ; 

__attribute__((used)) static bool FUNC3(SQInfo *pQInfo, TSKEY nextKey, SMeterDataInfo *pMeterInfo) {
  SMeterQuerySupportObj *pSupporter = pQInfo->pMeterQuerySupporter;
  SQuery *               pQuery = &pQInfo->query;
  SMeterObj *            pMeterObj = pMeterInfo->pMeterObj;

  /* no data for current query */
  if ((nextKey > pQuery->ekey && FUNC0(pQuery)) ||
      (nextKey < pQuery->ekey && !FUNC0(pQuery))) {
    if (((nextKey > pSupporter->rawEKey) && FUNC0(pQuery)) ||
        ((nextKey < pSupporter->rawEKey) && (!FUNC0(pQuery)))) {
      FUNC1("QInfo:%p vid:%d sid:%d id:%s, no data qualified in block, ignore", pQInfo, pMeterObj->vnode,
             pMeterObj->sid, pMeterObj->meterId);

      return false;
    } else {  // in case of interval query, forward the query range
      FUNC2(pMeterInfo->pMeterQInfo, pSupporter, nextKey);
    }
  }

  return true;
}