
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;
struct TYPE_8__ {int * methods; TYPE_2__ ss; } ;
struct TYPE_9__ {TYPE_3__ customScanState; int distributedPlan; int executorType; } ;
typedef int Node ;
typedef int CustomScan ;
typedef TYPE_4__ CitusScanState ;


 int AdaptiveExecutorCustomExecMethods ;
 int GetDistributedPlan (int *) ;
 int MULTI_EXECUTOR_ADAPTIVE ;
 int T_CustomScanState ;
 TYPE_4__* palloc0 (int) ;

__attribute__((used)) static Node *
AdaptiveExecutorCreateScan(CustomScan *scan)
{
 CitusScanState *scanState = palloc0(sizeof(CitusScanState));

 scanState->executorType = MULTI_EXECUTOR_ADAPTIVE;
 scanState->customScanState.ss.ps.type = T_CustomScanState;
 scanState->distributedPlan = GetDistributedPlan(scan);

 scanState->customScanState.methods = &AdaptiveExecutorCustomExecMethods;

 return (Node *) scanState;
}
