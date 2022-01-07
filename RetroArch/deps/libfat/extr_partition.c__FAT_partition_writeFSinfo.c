
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int numberLastAllocCluster; int numberFreeCluster; } ;
struct TYPE_5__ {scalar_t__ filesysType; int fsInfoSector; int disc; TYPE_1__ fat; int bytesPerSector; } ;
typedef TYPE_2__ PARTITION ;


 int FSIB_SIG1 ;
 int FSIB_SIG2 ;
 int FSIB_numberLastAllocCluster ;
 int FSIB_numberOfFreeCluster ;
 scalar_t__ FS_FAT32 ;
 int FS_INFO_SIG1 ;
 int FS_INFO_SIG2 ;
 int _FAT_disc_readSectors (int ,int ,int,int *) ;
 int _FAT_disc_writeSectors (int ,int ,int,int *) ;
 scalar_t__ _FAT_mem_align (int ) ;
 int _FAT_mem_free (int *) ;
 scalar_t__ memcmp (int *,int ,int) ;
 int memset (int *,int ,int ) ;
 int u32_to_u8array (int *,int ,int ) ;

void _FAT_partition_writeFSinfo(PARTITION * partition)
{
   uint8_t *sectorBuffer = ((void*)0);
 if(partition->filesysType != FS_FAT32)
  return;

 sectorBuffer = (uint8_t*) _FAT_mem_align(partition->bytesPerSector);
 if (!sectorBuffer)
      return;
 memset(sectorBuffer, 0, partition->bytesPerSector);

 if (!_FAT_disc_readSectors (partition->disc, partition->fsInfoSector, 1, sectorBuffer))
   {
  _FAT_mem_free(sectorBuffer);
  return;
 }

 if(memcmp(sectorBuffer+FSIB_SIG1, FS_INFO_SIG1, 4) || memcmp(sectorBuffer+FSIB_SIG2, FS_INFO_SIG2, 4))
   {
  _FAT_mem_free(sectorBuffer);
  return;
 }

 u32_to_u8array(sectorBuffer, FSIB_numberOfFreeCluster, partition->fat.numberFreeCluster);
 u32_to_u8array(sectorBuffer, FSIB_numberLastAllocCluster, partition->fat.numberLastAllocCluster);


 _FAT_disc_writeSectors (partition->disc, partition->fsInfoSector, 1, sectorBuffer);
 _FAT_mem_free(sectorBuffer);
}
