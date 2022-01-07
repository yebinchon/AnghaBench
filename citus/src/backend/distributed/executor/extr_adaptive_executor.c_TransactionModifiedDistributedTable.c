
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ isTransaction; } ;
typedef TYPE_1__ DistributedExecution ;


 scalar_t__ XACT_MODIFICATION_DATA ;
 scalar_t__ XactModificationLevel ;

__attribute__((used)) static bool
TransactionModifiedDistributedTable(DistributedExecution *execution)
{






 return execution->isTransaction && XactModificationLevel == XACT_MODIFICATION_DATA;
}
