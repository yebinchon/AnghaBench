
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int numberLastAllocCluster; int numberFreeCluster; } ;
struct TYPE_6__ {int fsInfoSector; int disc; TYPE_1__ fat; } ;
typedef TYPE_2__ PARTITION ;


 int FSIB_numberLastAllocCluster ;
 int FSIB_numberOfFreeCluster ;
 int _FAT_disc_writeSectors (int ,int ,int,int *) ;
 int _FAT_fat_freeClusterCount (TYPE_2__*) ;
 int u32_to_u8array (int *,int ,int ) ;

__attribute__((used)) static void _FAT_updateFS_INFO(PARTITION * partition, uint8_t *sectorBuffer) {
 partition->fat.numberFreeCluster = _FAT_fat_freeClusterCount(partition);
 u32_to_u8array(sectorBuffer, FSIB_numberOfFreeCluster, partition->fat.numberFreeCluster);
 u32_to_u8array(sectorBuffer, FSIB_numberLastAllocCluster, partition->fat.numberLastAllocCluster);
 _FAT_disc_writeSectors (partition->disc, partition->fsInfoSector, 1, sectorBuffer);
}
