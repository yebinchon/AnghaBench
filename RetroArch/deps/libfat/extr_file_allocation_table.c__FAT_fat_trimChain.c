
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int PARTITION ;


 scalar_t__ CLUSTER_EOF ;
 scalar_t__ CLUSTER_FREE ;
 int _FAT_fat_clearLinks (int *,scalar_t__) ;
 scalar_t__ _FAT_fat_nextCluster (int *,scalar_t__) ;
 int _FAT_fat_writeFatEntry (int *,scalar_t__,scalar_t__) ;

uint32_t _FAT_fat_trimChain (PARTITION* partition, uint32_t startCluster, unsigned int chainLength)
{
   uint32_t nextCluster;

   if (chainLength == 0)
   {

      _FAT_fat_clearLinks (partition, startCluster);
      return CLUSTER_FREE;
   }


   chainLength--;
   nextCluster = _FAT_fat_nextCluster (partition, startCluster);
   while ((chainLength > 0) && (nextCluster != CLUSTER_FREE) && (nextCluster != CLUSTER_EOF))
   {
      chainLength--;
      startCluster = nextCluster;
      nextCluster = _FAT_fat_nextCluster (partition, startCluster);
   }


   if (nextCluster != CLUSTER_FREE && nextCluster != CLUSTER_EOF)
      _FAT_fat_clearLinks (partition, nextCluster);


   _FAT_fat_writeFatEntry (partition, startCluster, CLUSTER_EOF);

   return startCluster;
}
