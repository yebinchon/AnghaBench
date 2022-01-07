
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef long uint64 ;
struct TYPE_3__ {long totalIntermediateResultSize; } ;
typedef TYPE_1__ DistributedExecutionStats ;


 long MaxIntermediateResult ;
 int SubPlanLevel ;

bool
CheckIfSizeLimitIsExceeded(DistributedExecutionStats *executionStats)
{
 uint64 maxIntermediateResultInBytes = 0;

 if (!SubPlanLevel || MaxIntermediateResult < 0)
 {
  return 0;
 }

 maxIntermediateResultInBytes = MaxIntermediateResult * 1024L;
 if (executionStats->totalIntermediateResultSize < maxIntermediateResultInBytes)
 {
  return 0;
 }

 return 1;
}
