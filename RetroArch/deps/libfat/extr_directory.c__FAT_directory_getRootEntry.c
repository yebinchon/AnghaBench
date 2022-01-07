
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ offset; scalar_t__ sector; scalar_t__ cluster; } ;
struct TYPE_8__ {char* filename; char* entryData; TYPE_1__ dataStart; TYPE_1__ dataEnd; } ;
struct TYPE_7__ {int rootDirCluster; } ;
typedef TYPE_2__ PARTITION ;
typedef TYPE_3__ DIR_ENTRY ;


 char ATTRIB_DIR ;
 int DIR_ENTRY_DATA_SIZE ;
 size_t DIR_ENTRY_attributes ;
 int DIR_ENTRY_cluster ;
 int DIR_ENTRY_clusterHigh ;
 int NAME_MAX ;
 int memset (char*,char,int) ;
 int u16_to_u8array (char*,int ,int) ;

bool _FAT_directory_getRootEntry (PARTITION* partition, DIR_ENTRY* entry)
{
   entry->dataStart.cluster = 0;
   entry->dataStart.sector = 0;
   entry->dataStart.offset = 0;

   entry->dataEnd = entry->dataStart;

   memset (entry->filename, '\0', NAME_MAX);
   entry->filename[0] = '.';

   memset (entry->entryData, 0, DIR_ENTRY_DATA_SIZE);
   memset (entry->entryData, ' ', 11);
   entry->entryData[0] = '.';

   entry->entryData[DIR_ENTRY_attributes] = ATTRIB_DIR;

   u16_to_u8array (entry->entryData, DIR_ENTRY_cluster, partition->rootDirCluster);
   u16_to_u8array (entry->entryData, DIR_ENTRY_clusterHigh, partition->rootDirCluster >> 16);

   return 1;
}
