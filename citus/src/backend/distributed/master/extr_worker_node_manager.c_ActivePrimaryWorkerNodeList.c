
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;
typedef int LOCKMODE ;


 int EnsureModificationsCanRun () ;
 int * FilterActiveNodeListFunc (int ,int ) ;
 int NodeIsPrimaryWorker ;

List *
ActivePrimaryWorkerNodeList(LOCKMODE lockMode)
{
 EnsureModificationsCanRun();
 return FilterActiveNodeListFunc(lockMode, NodeIsPrimaryWorker);
}
