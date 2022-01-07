
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_5__ {int workerPort; int workerName; } ;
typedef TYPE_1__ WorkerNode ;
typedef int HTAB ;


 int * GetWorkerNodeHash () ;
 int HASH_FIND ;
 int WORKER_LENGTH ;
 scalar_t__ hash_search (int *,void*,int ,int*) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 scalar_t__ palloc (int) ;
 scalar_t__ palloc0 (int) ;
 int strlcpy (int ,char*,int ) ;

WorkerNode *
FindWorkerNode(char *nodeName, int32 nodePort)
{
 WorkerNode *cachedWorkerNode = ((void*)0);
 HTAB *workerNodeHash = GetWorkerNodeHash();
 bool handleFound = 0;
 void *hashKey = ((void*)0);

 WorkerNode *searchedNode = (WorkerNode *) palloc0(sizeof(WorkerNode));
 strlcpy(searchedNode->workerName, nodeName, WORKER_LENGTH);
 searchedNode->workerPort = nodePort;

 hashKey = (void *) searchedNode;
 cachedWorkerNode = (WorkerNode *) hash_search(workerNodeHash, hashKey, HASH_FIND,
              &handleFound);
 if (handleFound)
 {
  WorkerNode *workerNode = (WorkerNode *) palloc(sizeof(WorkerNode));
  memcpy(workerNode, cachedWorkerNode, sizeof(WorkerNode));
  return workerNode;
 }

 return ((void*)0);
}
