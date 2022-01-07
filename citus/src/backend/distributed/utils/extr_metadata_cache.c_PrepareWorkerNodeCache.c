
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AcceptInvalidationMessages () ;
 int AccessShareLock ;
 int DistNodeRelationId () ;
 int InitializeCaches () ;
 int InitializeWorkerNodeCache () ;
 int LockRelationOid (int ,int ) ;
 int workerNodeHashValid ;

__attribute__((used)) static void
PrepareWorkerNodeCache(void)
{
 InitializeCaches();





 LockRelationOid(DistNodeRelationId(), AccessShareLock);





 AcceptInvalidationMessages();

 if (!workerNodeHashValid)
 {
  InitializeWorkerNodeCache();

  workerNodeHashValid = 1;
 }
}
