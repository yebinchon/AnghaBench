
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_4__ {char* workerRack; } ;
typedef TYPE_1__ WorkerNode ;
typedef int List ;


 TYPE_1__* FindRandomNodeFromList (int *) ;
 scalar_t__ OddNumber (scalar_t__) ;
 int * PrimaryNodesNotInList (int *) ;
 int WORKER_LENGTH ;
 scalar_t__ WORKER_RACK_TRIES ;
 scalar_t__ linitial (int *) ;
 scalar_t__ list_length (int *) ;
 scalar_t__ strncmp (char*,char*,int ) ;

WorkerNode *
WorkerGetRandomCandidateNode(List *currentNodeList)
{
 WorkerNode *workerNode = ((void*)0);
 bool wantSameRack = 0;
 uint32 tryCount = WORKER_RACK_TRIES;
 uint32 tryIndex = 0;

 uint32 currentNodeCount = list_length(currentNodeList);
 List *candidateWorkerNodeList = PrimaryNodesNotInList(currentNodeList);


 if (list_length(candidateWorkerNodeList) == 0)
 {
  return ((void*)0);
 }


 if (currentNodeCount == 0)
 {
  workerNode = FindRandomNodeFromList(candidateWorkerNodeList);
  return workerNode;
 }






 if (OddNumber(currentNodeCount))
 {
  wantSameRack = 0;
 }
 else
 {
  wantSameRack = 1;
 }






 for (tryIndex = 0; tryIndex < tryCount; tryIndex++)
 {
  WorkerNode *firstNode = (WorkerNode *) linitial(currentNodeList);
  char *firstRack = firstNode->workerRack;
  char *workerRack = ((void*)0);
  bool sameRack = 0;

  workerNode = FindRandomNodeFromList(candidateWorkerNodeList);
  workerRack = workerNode->workerRack;

  sameRack = (strncmp(workerRack, firstRack, WORKER_LENGTH) == 0);
  if ((sameRack && wantSameRack) || (!sameRack && !wantSameRack))
  {
   break;
  }
 }

 return workerNode;
}
