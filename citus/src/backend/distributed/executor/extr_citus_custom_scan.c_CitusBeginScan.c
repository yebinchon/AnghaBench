
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ps; } ;
struct TYPE_6__ {TYPE_1__ ss; } ;
struct TYPE_8__ {TYPE_3__* distributedPlan; TYPE_2__ customScanState; } ;
struct TYPE_7__ {scalar_t__ modLevel; int * insertSelectSubquery; } ;
typedef int EState ;
typedef TYPE_3__ DistributedPlan ;
typedef int CustomScanState ;
typedef TYPE_4__ CitusScanState ;


 int CitusModifyBeginScan (int *,int *,int) ;
 int ExecInitResultSlot (int *,int *) ;
 int MarkCitusInitiatedCoordinatorBackend () ;
 scalar_t__ ROW_MODIFY_READONLY ;
 int TTSOpsMinimalTuple ;

__attribute__((used)) static void
CitusBeginScan(CustomScanState *node, EState *estate, int eflags)
{
 CitusScanState *scanState = ((void*)0);
 DistributedPlan *distributedPlan = ((void*)0);

 MarkCitusInitiatedCoordinatorBackend();

 scanState = (CitusScanState *) node;





 distributedPlan = scanState->distributedPlan;
 if (distributedPlan->modLevel == ROW_MODIFY_READONLY ||
  distributedPlan->insertSelectSubquery != ((void*)0))
 {

  return;
 }

 CitusModifyBeginScan(node, estate, eflags);
}
