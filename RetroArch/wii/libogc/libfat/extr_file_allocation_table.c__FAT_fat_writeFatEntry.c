
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
struct TYPE_4__ {scalar_t__ lastCluster; scalar_t__ fatStart; } ;
struct TYPE_5__ {int filesysType; scalar_t__ bytesPerSector; int cache; TYPE_1__ fat; } ;
typedef TYPE_2__ PARTITION ;


 scalar_t__ CLUSTER_FIRST ;




 int _FAT_cache_readLittleEndianValue (int ,scalar_t__*,scalar_t__,int,int) ;
 int _FAT_cache_writeLittleEndianValue (int ,scalar_t__,scalar_t__,int,int) ;

__attribute__((used)) static bool _FAT_fat_writeFatEntry (PARTITION* partition, uint32_t cluster, uint32_t value) {
 sec_t sector;
 int offset;
 uint32_t oldValue;

 if ((cluster < CLUSTER_FIRST) || (cluster > partition->fat.lastCluster ))
 {
  return 0;
 }

 switch (partition->filesysType)
 {
  case 128:
   return 0;
   break;

  case 131:
   sector = partition->fat.fatStart + (((cluster * 3) / 2) / partition->bytesPerSector);
   offset = ((cluster * 3) / 2) % partition->bytesPerSector;

   if (cluster & 0x01) {

    _FAT_cache_readLittleEndianValue (partition->cache, &oldValue, sector, offset, sizeof(u8));

    value = (value << 4) | (oldValue & 0x0F);

    _FAT_cache_writeLittleEndianValue (partition->cache, value & 0xFF, sector, offset, sizeof(u8));

    offset++;
    if (offset >= partition->bytesPerSector) {
     offset = 0;
     sector++;
    }

    _FAT_cache_writeLittleEndianValue (partition->cache, (value >> 8) & 0xFF, sector, offset, sizeof(u8));

   } else {

    _FAT_cache_writeLittleEndianValue (partition->cache, value, sector, offset, sizeof(u8));

    offset++;
    if (offset >= partition->bytesPerSector) {
     offset = 0;
     sector++;
    }

    _FAT_cache_readLittleEndianValue (partition->cache, &oldValue, sector, offset, sizeof(u8));

    value = ((value >> 8) & 0x0F) | (oldValue & 0xF0);

    _FAT_cache_writeLittleEndianValue (partition->cache, value, sector, offset, sizeof(u8));
   }

   break;

  case 130:
   sector = partition->fat.fatStart + ((cluster << 1) / partition->bytesPerSector);
   offset = (cluster % (partition->bytesPerSector >> 1)) << 1;

   _FAT_cache_writeLittleEndianValue (partition->cache, value, sector, offset, sizeof(u16));

   break;

  case 129:
   sector = partition->fat.fatStart + ((cluster << 2) / partition->bytesPerSector);
   offset = (cluster % (partition->bytesPerSector >> 2)) << 2;

   _FAT_cache_writeLittleEndianValue (partition->cache, value, sector, offset, sizeof(u32));

   break;

  default:
   return 0;
   break;
 }

 return 1;
}
