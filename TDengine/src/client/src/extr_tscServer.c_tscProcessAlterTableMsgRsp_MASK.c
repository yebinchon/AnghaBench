#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  name; int /*<<< orphan*/  pMetricMeta; scalar_t__ pMeterMeta; } ;
struct TYPE_7__ {int /*<<< orphan*/  cmd; } ;
typedef  TYPE_1__ SSqlObj ;
typedef  TYPE_2__ SMeterMetaInfo ;
typedef  int /*<<< orphan*/  SMeterMeta ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void**,int) ; 
 int /*<<< orphan*/  tscCacheHandle ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC6(SSqlObj *pSql) {
  SMeterMetaInfo *pMeterMetaInfo = FUNC4(&pSql->cmd, 0);

  SMeterMeta *pMeterMeta = FUNC2(tscCacheHandle, pMeterMetaInfo->name);
  if (pMeterMeta == NULL) { /* not in cache, abort */
    return 0;
  }

  FUNC5("%p force release metermeta in cache after alter-table: %s", pSql, pMeterMetaInfo->name);
  FUNC3(tscCacheHandle, (void **)&pMeterMeta, true);

  if (pMeterMetaInfo->pMeterMeta) {
    bool isMetric = FUNC0(pMeterMetaInfo);

    FUNC3(tscCacheHandle, (void **)&(pMeterMetaInfo->pMeterMeta), true);
    FUNC3(tscCacheHandle, (void **)&(pMeterMetaInfo->pMetricMeta), true);

    if (isMetric) {  // if it is a metric, reset whole query cache
      FUNC5("%p reset query cache since table:%s is stable", pSql, pMeterMetaInfo->name);
      FUNC1(tscCacheHandle);
    }
  }

  return 0;
}