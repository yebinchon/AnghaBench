
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; scalar_t__ msgType; } ;
typedef TYPE_1__ SSqlCmd ;


 scalar_t__ TSDB_MSG_TYPE_QUERY ;
 int TSDB_QUERY_TYPE_STABLE_QUERY ;

bool tscQueryOnMetric(SSqlCmd* pCmd) {
  return ((pCmd->type & TSDB_QUERY_TYPE_STABLE_QUERY) == TSDB_QUERY_TYPE_STABLE_QUERY) &&
         (pCmd->msgType == TSDB_MSG_TYPE_QUERY);
}
