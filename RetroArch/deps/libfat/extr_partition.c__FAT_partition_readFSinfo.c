
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {scalar_t__ numberLastAllocCluster; scalar_t__ numberFreeCluster; } ;
struct TYPE_6__ {scalar_t__ filesysType; TYPE_1__ fat; int fsInfoSector; int disc; int bytesPerSector; } ;
typedef TYPE_2__ PARTITION ;


 int FSIB_SIG1 ;
 int FSIB_SIG2 ;
 int FSIB_numberLastAllocCluster ;
 int FSIB_numberOfFreeCluster ;
 scalar_t__ FS_FAT32 ;
 int FS_INFO_SIG1 ;
 int FS_INFO_SIG2 ;
 int _FAT_disc_readSectors (int ,int ,int,int *) ;
 scalar_t__ _FAT_mem_align (int ) ;
 int _FAT_mem_free (int *) ;
 int _FAT_partition_createFSinfo (TYPE_2__*) ;
 scalar_t__ memcmp (int *,int ,int) ;
 int memset (int *,int ,int ) ;
 scalar_t__ u8array_to_u32 (int *,int ) ;

void _FAT_partition_readFSinfo(PARTITION * partition)
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


 if(memcmp(sectorBuffer+FSIB_SIG1, FS_INFO_SIG1, 4) != 0 ||
  memcmp(sectorBuffer+FSIB_SIG2, FS_INFO_SIG2, 4) != 0 ||
  u8array_to_u32(sectorBuffer, FSIB_numberOfFreeCluster) == 0)
  _FAT_partition_createFSinfo(partition);
 else
   {
  partition->fat.numberFreeCluster = u8array_to_u32(sectorBuffer, FSIB_numberOfFreeCluster);
  partition->fat.numberLastAllocCluster = u8array_to_u32(sectorBuffer, FSIB_numberLastAllocCluster);
 }
 _FAT_mem_free(sectorBuffer);
}
