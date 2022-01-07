
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ commandsSent; int * workerPool; } ;
typedef TYPE_1__ WorkerSession ;
typedef int WorkerPool ;
typedef int TaskPlacementExecution ;


 int * PopAssignedPlacementExecution (TYPE_1__*) ;
 int * PopUnassignedPlacementExecution (int *) ;
 scalar_t__ UseConnectionPerPlacement () ;

__attribute__((used)) static TaskPlacementExecution *
PopPlacementExecution(WorkerSession *session)
{
 TaskPlacementExecution *placementExecution = ((void*)0);
 WorkerPool *workerPool = session->workerPool;

 placementExecution = PopAssignedPlacementExecution(session);
 if (placementExecution == ((void*)0))
 {
  if (session->commandsSent > 0 && UseConnectionPerPlacement())
  {




   return ((void*)0);
  }


  placementExecution = PopUnassignedPlacementExecution(workerPool);
 }

 return placementExecution;
}
