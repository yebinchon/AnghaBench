
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_5__ {scalar_t__ groupId; } ;
typedef TYPE_1__ WorkerNode ;
typedef int HTAB ;
typedef int HASH_SEQ_STATUS ;


 int * GetWorkerNodeHash () ;
 scalar_t__ NodeIsPrimary (TYPE_1__*) ;
 int hash_seq_init (int *,int *) ;
 TYPE_1__* hash_seq_search (int *) ;
 int hash_seq_term (int *) ;

WorkerNode *
PrimaryNodeForGroup(int32 groupId, bool *groupContainsNodes)
{
 WorkerNode *workerNode = ((void*)0);
 HASH_SEQ_STATUS status;
 HTAB *workerNodeHash = GetWorkerNodeHash();

 hash_seq_init(&status, workerNodeHash);

 while ((workerNode = hash_seq_search(&status)) != ((void*)0))
 {
  int32 workerNodeGroupId = workerNode->groupId;
  if (workerNodeGroupId != groupId)
  {
   continue;
  }

  if (groupContainsNodes != ((void*)0))
  {
   *groupContainsNodes = 1;
  }

  if (NodeIsPrimary(workerNode))
  {
   hash_seq_term(&status);
   return workerNode;
  }
 }

 return ((void*)0);
}
