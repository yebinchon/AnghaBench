
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int connection; TYPE_1__* workerPool; } ;
typedef TYPE_2__ WorkerSession ;
struct TYPE_4__ {int * distributedExecution; } ;
typedef int DistributedExecution ;


 scalar_t__ COMMIT_PROTOCOL_2PC ;
 int ConnectionModifiedPlacement (int ) ;
 int CoordinatedTransactionUse2PC () ;
 scalar_t__ DistributedExecutionModifiesDatabase (int *) ;
 scalar_t__ MultiShardCommitProtocol ;
 scalar_t__ TransactionModifiedDistributedTable (int *) ;

__attribute__((used)) static void
Activate2PCIfModifyingTransactionExpandsToNewNode(WorkerSession *session)
{
 DistributedExecution *execution = ((void*)0);

 if (MultiShardCommitProtocol != COMMIT_PROTOCOL_2PC)
 {

  return;
 }

 execution = session->workerPool->distributedExecution;
 if (TransactionModifiedDistributedTable(execution) &&
  DistributedExecutionModifiesDatabase(execution) &&
  !ConnectionModifiedPlacement(session->connection))
 {





  CoordinatedTransactionUse2PC();
 }
}
