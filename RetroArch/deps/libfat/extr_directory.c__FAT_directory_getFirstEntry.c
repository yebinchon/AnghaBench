
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int offset; scalar_t__ sector; int cluster; } ;
struct TYPE_6__ {TYPE_1__ dataStart; TYPE_1__ dataEnd; } ;
typedef int PARTITION ;
typedef TYPE_2__ DIR_ENTRY ;


 int _FAT_directory_getNextEntry (int *,TYPE_2__*) ;

bool _FAT_directory_getFirstEntry (PARTITION* partition, DIR_ENTRY* entry, uint32_t dirCluster)
{
   entry->dataStart.cluster = dirCluster;
   entry->dataStart.sector = 0;
   entry->dataStart.offset = -1;

   entry->dataEnd = entry->dataStart;

   return _FAT_directory_getNextEntry (partition, entry);
}
