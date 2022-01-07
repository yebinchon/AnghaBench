
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int PARTITION ;


 scalar_t__ CLUSTER_EOF ;
 scalar_t__ CLUSTER_FREE ;
 scalar_t__ _FAT_fat_nextCluster (int *,scalar_t__) ;

uint32_t _FAT_fat_lastCluster (PARTITION* partition, uint32_t cluster)
{
 while ((_FAT_fat_nextCluster(partition, cluster) != CLUSTER_FREE) && (_FAT_fat_nextCluster(partition, cluster) != CLUSTER_EOF))
  cluster = _FAT_fat_nextCluster(partition, cluster);
 return cluster;
}
