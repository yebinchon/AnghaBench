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
struct TYPE_7__ {int /*<<< orphan*/  pMetricMeta; scalar_t__ pMeterMeta; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int /*<<< orphan*/  cmd; } ;
typedef  TYPE_1__ SSqlObj ;
typedef  TYPE_2__ SMeterMetaInfo ;
typedef  int /*<<< orphan*/  SMeterMeta ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void**,int) ; 
 int /*<<< orphan*/  tscCacheHandle ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC4(SSqlObj *pSql) {
  SMeterMetaInfo *pMeterMetaInfo = FUNC2(&pSql->cmd, 0);

  SMeterMeta *pMeterMeta = FUNC0(tscCacheHandle, pMeterMetaInfo->name);
  if (pMeterMeta == NULL) {
    /* not in cache, abort */
    return 0;
  }

  /*
   * 1. if a user drops one table, which is the only table in a vnode, remove operation will incur vnode to be removed.
   * 2. Then, a user creates a new metric followed by a table with identical name of removed table but different schema,
   * here the table will reside in a new vnode.
   * The cached information is expired, however, we may have lost the ref of original meter. So, clear whole cache
   * instead.
   */
  FUNC3("%p force release metermeta after drop table:%s", pSql, pMeterMetaInfo->name);
  FUNC1(tscCacheHandle, (void **)&pMeterMeta, true);

  if (pMeterMetaInfo->pMeterMeta) {
    FUNC1(tscCacheHandle, (void **)&(pMeterMetaInfo->pMeterMeta), true);
    FUNC1(tscCacheHandle, (void **)&(pMeterMetaInfo->pMetricMeta), true);
  }

  return 0;
}