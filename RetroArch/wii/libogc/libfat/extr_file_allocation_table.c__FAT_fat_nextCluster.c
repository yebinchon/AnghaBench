
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef scalar_t__ sec_t ;
struct TYPE_4__ {scalar_t__ fatStart; } ;
struct TYPE_5__ {int filesysType; scalar_t__ bytesPerSector; int cache; TYPE_1__ fat; } ;
typedef TYPE_2__ PARTITION ;


 scalar_t__ CLUSTER_EOF ;
 scalar_t__ CLUSTER_ERROR ;
 scalar_t__ CLUSTER_FREE ;




 int _FAT_cache_readLittleEndianValue (int ,...) ;

uint32_t _FAT_fat_nextCluster(PARTITION* partition, uint32_t cluster)
{
 uint32_t nextCluster = CLUSTER_FREE;
 sec_t sector;
 int offset;

 if (cluster == CLUSTER_FREE) {
  return CLUSTER_FREE;
 }

 switch (partition->filesysType)
 {
  case 128:
   return CLUSTER_ERROR;
   break;

  case 131:
  {
   u32 nextCluster_h;
   sector = partition->fat.fatStart + (((cluster * 3) / 2) / partition->bytesPerSector);
   offset = ((cluster * 3) / 2) % partition->bytesPerSector;

   _FAT_cache_readLittleEndianValue (partition->cache, &nextCluster, sector, offset, sizeof(u8));

   offset++;

   if (offset >= partition->bytesPerSector) {
    offset = 0;
    sector++;
   }
   nextCluster_h = 0;

   _FAT_cache_readLittleEndianValue (partition->cache, &nextCluster_h, sector, offset, sizeof(u8));
   nextCluster |= (nextCluster_h << 8);

   if (cluster & 0x01) {
    nextCluster = nextCluster >> 4;
   } else {
    nextCluster &= 0x0FFF;
   }

   if (nextCluster >= 0x0FF7)
   {
    nextCluster = CLUSTER_EOF;
   }

   break;
  }
  case 130:
   sector = partition->fat.fatStart + ((cluster << 1) / partition->bytesPerSector);
   offset = (cluster % (partition->bytesPerSector >> 1)) << 1;

   _FAT_cache_readLittleEndianValue (partition->cache, &nextCluster, sector, offset, sizeof(u16));

   if (nextCluster >= 0xFFF7) {
    nextCluster = CLUSTER_EOF;
   }
   break;

  case 129:
   sector = partition->fat.fatStart + ((cluster << 2) / partition->bytesPerSector);
   offset = (cluster % (partition->bytesPerSector >> 2)) << 2;

   _FAT_cache_readLittleEndianValue (partition->cache, &nextCluster, sector, offset, sizeof(u32));

   if (nextCluster >= 0x0FFFFFF7) {
    nextCluster = CLUSTER_EOF;
   }
   break;

  default:
   return CLUSTER_ERROR;
   break;
 }

 return nextCluster;
}
