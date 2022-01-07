
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* workerPool; TYPE_3__* connection; } ;
typedef TYPE_2__ WorkerSession ;
struct TYPE_9__ {int waitFlagsChanged; } ;
struct TYPE_8__ {int waitFlags; } ;
struct TYPE_6__ {TYPE_4__* distributedExecution; } ;
typedef TYPE_3__ MultiConnection ;
typedef TYPE_4__ DistributedExecution ;



__attribute__((used)) static void
UpdateConnectionWaitFlags(WorkerSession *session, int waitFlags)
{
 MultiConnection *connection = session->connection;
 DistributedExecution *execution = session->workerPool->distributedExecution;


 if (connection->waitFlags == waitFlags)
 {
  return;
 }

 connection->waitFlags = waitFlags;


 execution->waitFlagsChanged = 1;
}
