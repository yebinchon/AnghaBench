#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * pMetricMeta; } ;
struct TYPE_8__ {int type; scalar_t__ command; } ;
typedef  TYPE_1__ SSqlCmd ;
typedef  TYPE_2__ SMeterMetaInfo ;

/* Variables and functions */
 int TSDB_QUERY_TYPE_STABLE_SUBQUERY ; 
 scalar_t__ TSDB_SQL_SELECT ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

bool FUNC4(SSqlCmd* pCmd) {
  FUNC1(pCmd != NULL);

  SMeterMetaInfo* pMeterMetaInfo = FUNC2(pCmd, 0);
  if (pMeterMetaInfo == NULL || pMeterMetaInfo->pMetricMeta == NULL) {
    return false;
  }

  // for projection query, iterate all qualified vnodes sequentially
  if (FUNC3(pCmd)) {
    return false;
  }

  if (((pCmd->type & TSDB_QUERY_TYPE_STABLE_SUBQUERY) != TSDB_QUERY_TYPE_STABLE_SUBQUERY) &&
      pCmd->command == TSDB_SQL_SELECT) {
    return FUNC0(pMeterMetaInfo);
  }

  return false;
}