
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int DeferredErrorMessage ;


 int * DeferErrorIfPartitionTableNotSingleReplicated (int ) ;
 int ERROR ;
 int RaiseDeferredError (int *,int ) ;

void
EnsurePartitionTableNotReplicated(Oid relationId)
{
 DeferredErrorMessage *deferredError =
  DeferErrorIfPartitionTableNotSingleReplicated(relationId);
 if (deferredError != ((void*)0))
 {
  RaiseDeferredError(deferredError, ERROR);
 }
}
