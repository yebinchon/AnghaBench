
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int WorkerNode ;
typedef int List ;


 int list_length (int *) ;
 scalar_t__ list_nth (int *,int) ;
 int random () ;

__attribute__((used)) static WorkerNode *
FindRandomNodeFromList(List *candidateWorkerNodeList)
{
 uint32 candidateNodeCount = list_length(candidateWorkerNodeList);


 uint32 workerPosition = (random() % candidateNodeCount);

 WorkerNode *workerNode =
  (WorkerNode *) list_nth(candidateWorkerNodeList, workerPosition);

 return workerNode;
}
