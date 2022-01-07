
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ lastCluster; scalar_t__ firstFree; scalar_t__ numberLastAllocCluster; scalar_t__ numberFreeCluster; } ;
struct TYPE_7__ {TYPE_1__ fat; } ;
typedef TYPE_2__ PARTITION ;


 scalar_t__ CLUSTER_EOF ;
 scalar_t__ CLUSTER_ERROR ;
 scalar_t__ CLUSTER_FIRST ;
 scalar_t__ CLUSTER_FREE ;
 scalar_t__ _FAT_fat_nextCluster (TYPE_2__*,scalar_t__) ;
 int _FAT_fat_writeFatEntry (TYPE_2__*,scalar_t__,scalar_t__) ;

uint32_t _FAT_fat_linkFreeCluster(PARTITION* partition, uint32_t cluster)
{
 uint32_t firstFree;
 uint32_t curLink;
 uint32_t lastCluster;
 bool loopedAroundFAT = 0;

 lastCluster = partition->fat.lastCluster;

 if (cluster > lastCluster)
  return CLUSTER_ERROR;


 curLink = _FAT_fat_nextCluster(partition, cluster);
 if ((curLink >= CLUSTER_FIRST) && (curLink <= lastCluster))
  return curLink;


 firstFree = partition->fat.firstFree;

 if (firstFree < CLUSTER_FIRST)
  firstFree = CLUSTER_FIRST;


 while (_FAT_fat_nextCluster(partition, firstFree) != CLUSTER_FREE)
   {
  firstFree++;
  if (firstFree > lastCluster)
      {
         if (loopedAroundFAT)
         {

            partition->fat.firstFree = firstFree;
            return CLUSTER_ERROR;
         }



         firstFree = CLUSTER_FIRST;
         loopedAroundFAT = 1;
      }
 }
 partition->fat.firstFree = firstFree;
 if(partition->fat.numberFreeCluster)
  partition->fat.numberFreeCluster--;
 partition->fat.numberLastAllocCluster = firstFree;


 if ((cluster >= CLUSTER_FIRST) && (cluster <= lastCluster))
  _FAT_fat_writeFatEntry (partition, cluster, firstFree);

 _FAT_fat_writeFatEntry (partition, firstFree, CLUSTER_EOF);

 return firstFree;
}
