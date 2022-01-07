
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WorkerTask ;
typedef int HTAB ;


 int FATAL ;
 int HASH_REMOVE ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 int * hash_search (int *,void*,int ,int *) ;

__attribute__((used)) static void
RemoveWorkerTask(WorkerTask *workerTask, HTAB *WorkerTasksHash)
{
 void *hashKey = (void *) workerTask;

 WorkerTask *taskRemoved = hash_search(WorkerTasksHash, hashKey, HASH_REMOVE, ((void*)0));
 if (taskRemoved == ((void*)0))
 {
  ereport(FATAL, (errmsg("worker task hash corrupted")));
 }
}
