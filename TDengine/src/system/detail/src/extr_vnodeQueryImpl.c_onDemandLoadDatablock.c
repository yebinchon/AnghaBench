
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {scalar_t__ nAggTimeInterval; } ;
typedef TYPE_1__ SQuery ;



bool onDemandLoadDatablock(SQuery *pQuery, int16_t queryRangeSet) {
  return (pQuery->nAggTimeInterval == 0) || ((queryRangeSet == 1) && (pQuery->nAggTimeInterval > 0));
}
