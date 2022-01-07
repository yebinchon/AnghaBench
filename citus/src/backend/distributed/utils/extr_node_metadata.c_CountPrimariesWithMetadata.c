
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_4__ {scalar_t__ hasMetadata; } ;
typedef TYPE_1__ WorkerNode ;
typedef int HTAB ;
typedef int HASH_SEQ_STATUS ;


 int * GetWorkerNodeHash () ;
 scalar_t__ NodeIsPrimary (TYPE_1__*) ;
 int hash_seq_init (int *,int *) ;
 TYPE_1__* hash_seq_search (int *) ;

uint32
CountPrimariesWithMetadata(void)
{
 uint32 primariesWithMetadata = 0;
 WorkerNode *workerNode = ((void*)0);

 HASH_SEQ_STATUS status;
 HTAB *workerNodeHash = GetWorkerNodeHash();

 hash_seq_init(&status, workerNodeHash);

 while ((workerNode = hash_seq_search(&status)) != ((void*)0))
 {
  if (workerNode->hasMetadata && NodeIsPrimary(workerNode))
  {
   primariesWithMetadata++;
  }
 }

 return primariesWithMetadata;
}
