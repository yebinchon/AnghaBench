
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ filesysType; } ;
typedef TYPE_1__ PARTITION ;


 int DIR_ENTRY_cluster ;
 int DIR_ENTRY_clusterHigh ;
 scalar_t__ FS_FAT32 ;
 int u8array_to_u16 (int const*,int ) ;

uint32_t _FAT_directory_entryGetCluster (PARTITION* partition, const uint8_t* entryData) {
 if (partition->filesysType == FS_FAT32) {

  return u8array_to_u16(entryData,DIR_ENTRY_cluster) | (u8array_to_u16(entryData, DIR_ENTRY_clusterHigh) << 16);
 } else {
  return u8array_to_u16(entryData,DIR_ENTRY_cluster);
 }
}
