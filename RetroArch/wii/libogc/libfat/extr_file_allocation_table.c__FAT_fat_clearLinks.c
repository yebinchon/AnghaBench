
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int numberFreeCluster; int firstFree; int lastCluster; } ;
struct TYPE_7__ {int numberOfSectors; int sectorsPerCluster; TYPE_1__ fat; } ;
typedef TYPE_2__ PARTITION ;


 int CLUSTER_EOF ;
 int CLUSTER_ERROR ;
 int CLUSTER_FIRST ;
 int CLUSTER_FREE ;
 int _FAT_fat_nextCluster (TYPE_2__*,int ) ;
 int _FAT_fat_writeFatEntry (TYPE_2__*,int ,int ) ;

bool _FAT_fat_clearLinks (PARTITION* partition, uint32_t cluster) {
 uint32_t nextCluster;

 if ((cluster < CLUSTER_FIRST) || (cluster > partition->fat.lastCluster ))
  return 0;


 if (cluster < partition->fat.firstFree) {
  partition->fat.firstFree = cluster;
 }

 while ((cluster != CLUSTER_EOF) && (cluster != CLUSTER_FREE) && (cluster != CLUSTER_ERROR)) {

  nextCluster = _FAT_fat_nextCluster (partition, cluster);


  _FAT_fat_writeFatEntry (partition, cluster, CLUSTER_FREE);

  if(partition->fat.numberFreeCluster < (partition->numberOfSectors/partition->sectorsPerCluster))
   partition->fat.numberFreeCluster++;

  cluster = nextCluster;
 }

 return 1;
}
