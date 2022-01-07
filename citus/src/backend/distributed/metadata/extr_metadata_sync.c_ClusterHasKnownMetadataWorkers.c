
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GetLocalGroupId () ;
 scalar_t__ HasMetadataWorkers () ;

bool
ClusterHasKnownMetadataWorkers()
{
 bool workerWithMetadata = 0;

 if (GetLocalGroupId() != 0)
 {
  workerWithMetadata = 1;
 }

 if (workerWithMetadata || HasMetadataWorkers())
 {
  return 1;
 }

 return 0;
}
