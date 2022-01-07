
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef size_t int32_t ;
struct TYPE_6__ {scalar_t__ uid; } ;
struct TYPE_5__ {TYPE_2__* cond; } ;
typedef TYPE_1__ STagCond ;
typedef TYPE_2__ SCond ;


 size_t TSDB_MAX_JOIN_TABLE_NUM ;

SCond* tsGetMetricQueryCondPos(STagCond* pTagCond, uint64_t uid) {
  for (int32_t i = 0; i < TSDB_MAX_JOIN_TABLE_NUM; ++i) {
    if (uid == pTagCond->cond[i].uid) {
      return &pTagCond->cond[i];
    }
  }

  return ((void*)0);
}
