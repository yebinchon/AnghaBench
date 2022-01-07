
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ poolStartTime; int activeConnectionCount; int checkForPoolTimeout; int nodePort; int nodeName; int sessionList; TYPE_2__* distributedExecution; } ;
typedef TYPE_1__ WorkerPool ;
typedef scalar_t__ TimestampTz ;
struct TYPE_6__ {scalar_t__ failed; scalar_t__ errorOnAnyFailure; } ;
typedef TYPE_2__ DistributedExecution ;


 int Assert (int) ;
 int ERRCODE_CONNECTION_FAILURE ;
 int ERROR ;
 scalar_t__ GetCurrentTimestamp () ;
 int NodeConnectionTimeout ;
 scalar_t__ TimestampDifferenceExceeds (scalar_t__,scalar_t__,int ) ;
 scalar_t__ UseConnectionPerPlacement () ;
 int WARNING ;
 int WorkerPoolFailed (TYPE_1__*) ;
 int ereport (int,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ,int ) ;
 int list_length (int ) ;

__attribute__((used)) static void
CheckConnectionTimeout(WorkerPool *workerPool)
{
 DistributedExecution *execution = workerPool->distributedExecution;
 TimestampTz poolStartTime = workerPool->poolStartTime;
 TimestampTz now = GetCurrentTimestamp();

 int initiatedConnectionCount = list_length(workerPool->sessionList);
 int activeConnectionCount = workerPool->activeConnectionCount;
 int requiredActiveConnectionCount = 1;

 if (initiatedConnectionCount == 0)
 {

  Assert(poolStartTime == 0);
  return;
 }







 if (UseConnectionPerPlacement())
 {
  requiredActiveConnectionCount = initiatedConnectionCount;
 }

 if (TimestampDifferenceExceeds(poolStartTime, now, NodeConnectionTimeout))
 {
  if (activeConnectionCount < requiredActiveConnectionCount)
  {
   int logLevel = WARNING;





   WorkerPoolFailed(workerPool);






   if (execution->errorOnAnyFailure || execution->failed)
   {
    logLevel = ERROR;
   }

   ereport(logLevel, (errcode(ERRCODE_CONNECTION_FAILURE),
          errmsg("could not establish any connections to the node "
           "%s:%d after %u ms", workerPool->nodeName,
           workerPool->nodePort,
           NodeConnectionTimeout)));
  }
  else
  {

   workerPool->checkForPoolTimeout = 0;
  }
 }
}
