
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ signature; } ;
typedef TYPE_1__ SQInfo ;


 scalar_t__ TSDB_QINFO_QUERY_FLAG ;

bool vnodeIsQInfoValid(void *param) {
  SQInfo *pQInfo = (SQInfo *)param;
  if (pQInfo == ((void*)0)) {
    return 0;
  }





  uint64_t sig = pQInfo->signature;
  return (sig == (uint64_t)pQInfo) || (sig == TSDB_QINFO_QUERY_FLAG);
}
