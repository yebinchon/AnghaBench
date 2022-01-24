#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_1__* vpeerDesc; } ;
struct TYPE_20__ {int /*<<< orphan*/ * pMetricMeta; TYPE_8__* pMeterMeta; } ;
struct TYPE_19__ {void* vnode; } ;
struct TYPE_18__ {int /*<<< orphan*/  vnodeIdx; } ;
struct TYPE_17__ {size_t index; TYPE_5__ cmd; } ;
struct TYPE_16__ {TYPE_2__* vpeerDesc; } ;
struct TYPE_15__ {int /*<<< orphan*/  vnode; } ;
struct TYPE_14__ {int /*<<< orphan*/  vnode; } ;
typedef  TYPE_3__ SVnodeSidList ;
typedef  TYPE_4__ SSqlObj ;
typedef  TYPE_5__ SSqlCmd ;
typedef  TYPE_6__ SQueryMeterMsg ;
typedef  int /*<<< orphan*/  SMetricMeta ;
typedef  TYPE_7__ SMeterMetaInfo ;
typedef  TYPE_8__ SMeterMeta ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_7__*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int tsRpcHeadSize ; 
 TYPE_7__* FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(SSqlObj *pSql, char *buf) {
  SSqlCmd *       pCmd = &pSql->cmd;
  SMeterMetaInfo *pMeterMetaInfo = FUNC2(pCmd, 0);

  char *          pStart = buf + tsRpcHeadSize;
  SQueryMeterMsg *pQueryMsg = (SQueryMeterMsg *)pStart;

  if (FUNC0(pMeterMetaInfo)) {  // pSchema == NULL, query on meter
    SMeterMeta *pMeterMeta = pMeterMetaInfo->pMeterMeta;
    pQueryMsg->vnode = FUNC1(pMeterMeta->vpeerDesc[pSql->index].vnode);
  } else {  // query on metric
    SMetricMeta *  pMetricMeta = pMeterMetaInfo->pMetricMeta;
    SVnodeSidList *pVnodeSidList = FUNC3(pMetricMeta, pCmd->vnodeIdx);
    pQueryMsg->vnode = FUNC1(pVnodeSidList->vpeerDesc[pSql->index].vnode);
  }
}