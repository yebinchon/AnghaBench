
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * pMetricMeta; } ;
struct TYPE_8__ {int type; scalar_t__ command; } ;
typedef TYPE_1__ SSqlCmd ;
typedef TYPE_2__ SMeterMetaInfo ;


 int TSDB_QUERY_TYPE_STABLE_SUBQUERY ;
 scalar_t__ TSDB_SQL_SELECT ;
 int UTIL_METER_IS_METRIC (TYPE_2__*) ;
 int assert (int ) ;
 TYPE_2__* tscGetMeterMetaInfo (TYPE_1__*,int ) ;
 scalar_t__ tscProjectionQueryOnMetric (TYPE_1__*) ;

bool tscIsTwoStageMergeMetricQuery(SSqlCmd* pCmd) {
  assert(pCmd != ((void*)0));

  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);
  if (pMeterMetaInfo == ((void*)0) || pMeterMetaInfo->pMetricMeta == ((void*)0)) {
    return 0;
  }


  if (tscProjectionQueryOnMetric(pCmd)) {
    return 0;
  }

  if (((pCmd->type & TSDB_QUERY_TYPE_STABLE_SUBQUERY) != TSDB_QUERY_TYPE_STABLE_SUBQUERY) &&
      pCmd->command == TSDB_SQL_SELECT) {
    return UTIL_METER_IS_METRIC(pMeterMetaInfo);
  }

  return 0;
}
