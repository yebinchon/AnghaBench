
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_9__ {int offset; scalar_t__ sector; scalar_t__ cluster; } ;
struct TYPE_8__ {int bytesPerSector; scalar_t__ sectorsPerCluster; scalar_t__ dataStart; scalar_t__ rootDirStart; } ;
typedef TYPE_1__ PARTITION ;
typedef TYPE_2__ DIR_ENTRY_POSITION ;


 scalar_t__ CLUSTER_EOF ;
 int DIR_ENTRY_DATA_SIZE ;
 scalar_t__ FAT16_ROOT_DIR_CLUSTER ;
 int _FAT_fat_isValidCluster (TYPE_1__*,scalar_t__) ;
 scalar_t__ _FAT_fat_linkFreeClusterCleared (TYPE_1__*,scalar_t__) ;
 scalar_t__ _FAT_fat_nextCluster (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static bool _FAT_directory_incrementDirEntryPosition (PARTITION* partition, DIR_ENTRY_POSITION* entryPosition, bool extendDirectory) {
 DIR_ENTRY_POSITION position = *entryPosition;
 uint32_t tempCluster;


 ++ position.offset;
 if (position.offset == partition->bytesPerSector / DIR_ENTRY_DATA_SIZE) {
  position.offset = 0;

  ++ position.sector;

  if ((position.sector == partition->sectorsPerCluster) && (position.cluster != FAT16_ROOT_DIR_CLUSTER)) {
   position.sector = 0;

   tempCluster = _FAT_fat_nextCluster(partition, position.cluster);
   if (tempCluster == CLUSTER_EOF) {
    if (extendDirectory) {
     tempCluster = _FAT_fat_linkFreeClusterCleared (partition, position.cluster);
     if (!_FAT_fat_isValidCluster(partition, tempCluster)) {
      return 0;
     }
    } else {
     return 0;
    }
   }
   position.cluster = tempCluster;
  } else if ((position.cluster == FAT16_ROOT_DIR_CLUSTER) && (position.sector == (partition->dataStart - partition->rootDirStart))) {
   return 0;
  }
 }
 *entryPosition = position;
 return 1;
}
