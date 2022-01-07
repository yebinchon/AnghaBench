
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int activeConnectionCount; int failedConnectionCount; int idleConnectionCount; int sessionList; } ;
typedef TYPE_1__ WorkerPool ;


 int list_length (int ) ;

__attribute__((used)) static int
UsableConnectionCount(WorkerPool *workerPool)
{
 int initiatedConnectionCount = list_length(workerPool->sessionList);
 int activeConnectionCount = workerPool->activeConnectionCount;
 int failedConnectionCount = workerPool->failedConnectionCount;
 int idleConnectionCount = workerPool->idleConnectionCount;


 int establishingConnectionCount =
  initiatedConnectionCount - activeConnectionCount - failedConnectionCount;

 int usableConnectionCount = idleConnectionCount + establishingConnectionCount;

 return usableConnectionCount;
}
