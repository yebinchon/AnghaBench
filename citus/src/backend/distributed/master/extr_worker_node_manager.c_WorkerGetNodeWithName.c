
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int workerName; } ;
typedef TYPE_1__ WorkerNode ;
typedef int HTAB ;
typedef int HASH_SEQ_STATUS ;


 int * GetWorkerNodeHash () ;
 int WORKER_LENGTH ;
 int hash_seq_init (int *,int *) ;
 TYPE_1__* hash_seq_search (int *) ;
 int hash_seq_term (int *) ;
 int strncmp (int ,char const*,int ) ;

__attribute__((used)) static WorkerNode *
WorkerGetNodeWithName(const char *hostname)
{
 WorkerNode *workerNode = ((void*)0);
 HASH_SEQ_STATUS status;
 HTAB *workerNodeHash = GetWorkerNodeHash();

 hash_seq_init(&status, workerNodeHash);

 while ((workerNode = hash_seq_search(&status)) != ((void*)0))
 {
  int nameCompare = strncmp(workerNode->workerName, hostname, WORKER_LENGTH);
  if (nameCompare == 0)
  {

   hash_seq_term(&status);
   break;
  }
 }

 return workerNode;
}
