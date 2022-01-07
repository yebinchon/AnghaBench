
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ errorOnAnyFailure; } ;
typedef TYPE_1__ DistributedExecution ;


 int DistributedExecutionModifiesDatabase (TYPE_1__*) ;

__attribute__((used)) static bool
ShouldMarkPlacementsInvalidOnFailure(DistributedExecution *execution)
{
 if (!DistributedExecutionModifiesDatabase(execution) || execution->errorOnAnyFailure)
 {







  return 0;
 }

 return 1;
}
