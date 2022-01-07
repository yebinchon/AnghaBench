
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ filesysType; int bytesPerSector; scalar_t__ readOnly; } ;
typedef TYPE_1__ PARTITION ;


 int FSIB_SIG1 ;
 int FSIB_SIG2 ;
 size_t FSIB_bootSig_55 ;
 size_t FSIB_bootSig_AA ;
 scalar_t__ FS_FAT32 ;
 int* FS_INFO_SIG1 ;
 int* FS_INFO_SIG2 ;
 scalar_t__ _FAT_mem_align (int ) ;
 int _FAT_mem_free (int*) ;
 int _FAT_updateFS_INFO (TYPE_1__*,int*) ;
 int memset (int*,int ,int ) ;

void _FAT_partition_createFSinfo(PARTITION * partition)
{
 if(partition->readOnly || partition->filesysType != FS_FAT32)
  return;

 uint8_t *sectorBuffer = (uint8_t*) _FAT_mem_align(partition->bytesPerSector);
 if (!sectorBuffer) return;
 memset(sectorBuffer, 0, partition->bytesPerSector);

 int i;
 for(i = 0; i < 4; ++i)
 {
  sectorBuffer[FSIB_SIG1+i] = FS_INFO_SIG1[i];
  sectorBuffer[FSIB_SIG2+i] = FS_INFO_SIG2[i];
 }

 sectorBuffer[FSIB_bootSig_55] = 0x55;
 sectorBuffer[FSIB_bootSig_AA] = 0xAA;

 _FAT_updateFS_INFO(partition,sectorBuffer);

 _FAT_mem_free(sectorBuffer);
}
