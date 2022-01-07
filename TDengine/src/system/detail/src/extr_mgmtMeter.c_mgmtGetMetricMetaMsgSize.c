
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num; } ;
typedef TYPE_1__ tQueryResultset ;
typedef int int32_t ;
typedef int SVnodeSidList ;
typedef int SMetricMeta ;
typedef int SMeterSidExtInfo ;


 int mgmtGetNumOfVnodesInResult (TYPE_1__*) ;

__attribute__((used)) static int32_t mgmtGetMetricMetaMsgSize(tQueryResultset *pResult, int32_t tagLength, int32_t maxMetersPerQuery) {
  int32_t numOfVnodes = mgmtGetNumOfVnodesInResult(pResult);

  int32_t size = (sizeof(SMeterSidExtInfo) + tagLength) * pResult->num +
                 ((pResult->num / maxMetersPerQuery) + 1 + numOfVnodes) * sizeof(SVnodeSidList) + sizeof(SMetricMeta) +
                 1024;

  return size;
}
