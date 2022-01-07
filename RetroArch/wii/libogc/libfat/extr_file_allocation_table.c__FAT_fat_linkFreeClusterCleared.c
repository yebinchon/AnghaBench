
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ sectorsPerCluster; int cache; int bytesPerSector; } ;
typedef TYPE_1__ PARTITION ;


 scalar_t__ CLUSTER_ERROR ;
 scalar_t__ CLUSTER_FREE ;
 int _FAT_cache_writeSectors (int ,scalar_t__,int,int *) ;
 scalar_t__ _FAT_fat_clusterToSector (TYPE_1__*,scalar_t__) ;
 scalar_t__ _FAT_fat_linkFreeCluster (TYPE_1__*,scalar_t__) ;
 scalar_t__ _FAT_mem_allocate (int ) ;
 int _FAT_mem_free (int *) ;
 int memset (int *,int ,int ) ;

uint32_t _FAT_fat_linkFreeClusterCleared (PARTITION* partition, uint32_t cluster) {
 uint32_t newCluster;
 uint32_t i;
 uint8_t *emptySector;


 newCluster = _FAT_fat_linkFreeCluster(partition, cluster);

 if (newCluster == CLUSTER_FREE || newCluster == CLUSTER_ERROR) {
  return CLUSTER_ERROR;
 }

 emptySector = (uint8_t*) _FAT_mem_allocate(partition->bytesPerSector);


 memset (emptySector, 0, partition->bytesPerSector);
 for (i = 0; i < partition->sectorsPerCluster; i++) {
  _FAT_cache_writeSectors (partition->cache,
   _FAT_fat_clusterToSector (partition, newCluster) + i,
   1, emptySector);
 }

 _FAT_mem_free(emptySector);

 return newCluster;
}
