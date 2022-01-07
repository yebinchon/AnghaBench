
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int workerPort; int workerName; } ;
typedef TYPE_1__ WorkerNode ;
typedef int Size ;


 int WORKER_LENGTH ;
 int strncmp (int ,int ,int ) ;

int
WorkerNodeCompare(const void *lhsKey, const void *rhsKey, Size keySize)
{
 const WorkerNode *workerLhs = (const WorkerNode *) lhsKey;
 const WorkerNode *workerRhs = (const WorkerNode *) rhsKey;

 int nameCompare = 0;
 int portCompare = 0;

 nameCompare = strncmp(workerLhs->workerName, workerRhs->workerName, WORKER_LENGTH);
 if (nameCompare != 0)
 {
  return nameCompare;
 }

 portCompare = workerLhs->workerPort - workerRhs->workerPort;
 return portCompare;
}
