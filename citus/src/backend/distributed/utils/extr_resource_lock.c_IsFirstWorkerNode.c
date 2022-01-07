
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ groupId; } ;
typedef TYPE_1__ WorkerNode ;
typedef int List ;


 int * ActivePrimaryWorkerNodeList (int ) ;
 int CompareWorkerNodes ;
 scalar_t__ GetLocalGroupId () ;
 int NoLock ;
 int * SortList (int *,int ) ;
 scalar_t__ linitial (int *) ;
 scalar_t__ list_length (int *) ;

__attribute__((used)) static bool
IsFirstWorkerNode()
{
 List *workerNodeList = ActivePrimaryWorkerNodeList(NoLock);
 WorkerNode *firstWorkerNode = ((void*)0);

 workerNodeList = SortList(workerNodeList, CompareWorkerNodes);

 if (list_length(workerNodeList) == 0)
 {
  return 0;
 }

 firstWorkerNode = (WorkerNode *) linitial(workerNodeList);

 if (firstWorkerNode->groupId == GetLocalGroupId())
 {
  return 1;
 }

 return 0;
}
