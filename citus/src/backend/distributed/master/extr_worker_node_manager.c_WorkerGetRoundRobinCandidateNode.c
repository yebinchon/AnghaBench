
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint32 ;
typedef int WorkerNode ;
typedef int List ;


 int list_length (int *) ;
 scalar_t__ list_nth (int *,int) ;

WorkerNode *
WorkerGetRoundRobinCandidateNode(List *workerNodeList, uint64 shardId,
         uint32 placementIndex)
{
 uint32 workerNodeCount = list_length(workerNodeList);
 WorkerNode *candidateNode = ((void*)0);

 if (placementIndex < workerNodeCount)
 {
  uint32 candidateNodeIndex = (shardId + placementIndex) % workerNodeCount;
  candidateNode = (WorkerNode *) list_nth(workerNodeList, candidateNodeIndex);
 }

 return candidateNode;
}
