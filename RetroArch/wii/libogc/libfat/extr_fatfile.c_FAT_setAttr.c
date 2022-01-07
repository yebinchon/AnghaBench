
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int offset; scalar_t__ sector; int cluster; } ;
struct TYPE_10__ {TYPE_2__ dataEnd; } ;
struct TYPE_8__ {int lock; int cache; } ;
typedef TYPE_1__ PARTITION ;
typedef TYPE_2__ DIR_ENTRY_POSITION ;
typedef TYPE_3__ DIR_ENTRY ;


 int DIR_ENTRY_DATA_SIZE ;
 scalar_t__ DIR_ENTRY_attributes ;
 int _FAT_cache_flush (int ) ;
 int _FAT_cache_writePartialSector (int ,int *,scalar_t__,scalar_t__,int) ;
 int _FAT_directory_entryFromPath (TYPE_1__*,TYPE_3__*,char const*,int *) ;
 scalar_t__ _FAT_fat_clusterToSector (TYPE_1__*,int ) ;
 int _FAT_lock (int *) ;
 TYPE_1__* _FAT_partition_getPartitionFromPath (char const*) ;
 int _FAT_unlock (int *) ;
 char* strchr (char const*,char) ;

int FAT_setAttr(const char *file, uint8_t attr) {


 DIR_ENTRY_POSITION entryEnd;
 PARTITION *partition = ((void*)0);
 DIR_ENTRY dirEntry;


 partition = _FAT_partition_getPartitionFromPath( file );


 if( !partition )
  return -1;


 if (strchr (file, ':') != ((void*)0))
  file = strchr (file, ':') + 1;
 if (strchr (file, ':') != ((void*)0))
  return -1;


 if( !_FAT_directory_entryFromPath (partition, &dirEntry, file, ((void*)0)) )
  return -1;


 entryEnd = dirEntry.dataEnd;


 _FAT_lock(&partition->lock);


 _FAT_cache_writePartialSector (
  partition->cache
  , &attr
  , _FAT_fat_clusterToSector( partition , entryEnd.cluster ) + entryEnd.sector
  , entryEnd.offset * DIR_ENTRY_DATA_SIZE + DIR_ENTRY_attributes
  , 1
 );


 if ( !_FAT_cache_flush( partition->cache ) ) {
  _FAT_unlock(&partition->lock);
  return -1;
 }


 _FAT_unlock(&partition->lock);

 return 0;
}
