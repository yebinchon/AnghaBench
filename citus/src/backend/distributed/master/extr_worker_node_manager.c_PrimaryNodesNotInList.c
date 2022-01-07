
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WorkerNode ;
typedef int List ;
typedef int HTAB ;
typedef int HASH_SEQ_STATUS ;


 int * GetWorkerNodeHash () ;
 scalar_t__ ListMember (int *,int *) ;
 int * NIL ;
 scalar_t__ NodeIsPrimary (int *) ;
 int hash_seq_init (int *,int *) ;
 int * hash_seq_search (int *) ;
 int * lappend (int *,int *) ;

__attribute__((used)) static List *
PrimaryNodesNotInList(List *currentList)
{
 List *workerNodeList = NIL;
 HTAB *workerNodeHash = GetWorkerNodeHash();
 WorkerNode *workerNode = ((void*)0);
 HASH_SEQ_STATUS status;

 hash_seq_init(&status, workerNodeHash);

 while ((workerNode = hash_seq_search(&status)) != ((void*)0))
 {
  if (ListMember(currentList, workerNode))
  {
   continue;
  }

  if (NodeIsPrimary(workerNode))
  {
   workerNodeList = lappend(workerNodeList, workerNode);
  }
 }

 return workerNodeList;
}
