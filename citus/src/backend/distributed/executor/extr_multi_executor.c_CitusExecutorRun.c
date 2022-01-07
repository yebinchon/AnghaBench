
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_11__ {scalar_t__ mydest; int (* rShutdown ) (TYPE_3__*) ;int (* rStartup ) (TYPE_3__*,int ,int ) ;} ;
struct TYPE_10__ {int es_lastoid; scalar_t__ es_processed; } ;
struct TYPE_9__ {int tupDesc; TYPE_3__* dest; TYPE_2__* estate; } ;
typedef int ScanDirection ;
typedef TYPE_1__ QueryDesc ;
typedef TYPE_2__ EState ;
typedef TYPE_3__ DestReceiver ;


 scalar_t__ AlterTableConstraintCheck (TYPE_1__*) ;
 int CMD_SELECT ;
 scalar_t__ DestSPI ;
 int FunctionCallLevel ;
 int InvalidOid ;
 int standard_ExecutorRun (TYPE_1__*,int ,int ,int) ;
 int stub1 (TYPE_3__*,int ,int ) ;
 int stub2 (TYPE_3__*) ;

void
CitusExecutorRun(QueryDesc *queryDesc,
     ScanDirection direction, uint64 count, bool execute_once)
{
 DestReceiver *dest = queryDesc->dest;
 int originalLevel = FunctionCallLevel;

 if (dest->mydest == DestSPI)
 {





  FunctionCallLevel++;
 }
 if (AlterTableConstraintCheck(queryDesc))
 {
  EState *estate = queryDesc->estate;

  estate->es_processed = 0;

  estate->es_lastoid = InvalidOid;



  dest->rStartup(queryDesc->dest, CMD_SELECT, queryDesc->tupDesc);
  dest->rShutdown(dest);
 }
 else
 {
  standard_ExecutorRun(queryDesc, direction, count, execute_once);
 }

 if (dest->mydest == DestSPI)
 {





  FunctionCallLevel = originalLevel;
 }
}
