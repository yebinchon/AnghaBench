
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct statvfs {int f_flag; unsigned int f_bfree; unsigned int f_bavail; unsigned int f_ffree; unsigned int f_favail; int f_namemax; int f_fsid; void* f_files; void* f_blocks; int f_frsize; int f_bsize; } ;
struct _reent {int _errno; } ;
struct TYPE_6__ {unsigned int numberFreeCluster; void* lastCluster; } ;
struct TYPE_7__ {scalar_t__ filesysType; int lock; scalar_t__ readOnly; int disc; TYPE_1__ fat; int bytesPerCluster; } ;
typedef TYPE_2__ PARTITION ;


 void* CLUSTER_FIRST ;
 int ENODEV ;
 scalar_t__ FS_FAT32 ;
 int NAME_MAX ;
 int ST_NOSUID ;
 int ST_RDONLY ;
 int _FAT_disc_hostType (int ) ;
 unsigned int _FAT_fat_freeClusterCount (TYPE_2__*) ;
 int _FAT_lock (int *) ;
 int _FAT_partition_createFSinfo (TYPE_2__*) ;
 TYPE_2__* _FAT_partition_getPartitionFromPath (char const*) ;
 int _FAT_unlock (int *) ;
 scalar_t__ memcmp (int*,char*,int) ;

int _FAT_statvfs_r (struct _reent *r, const char *path, struct statvfs *buf)
{
 PARTITION* partition = ((void*)0);
 unsigned int freeClusterCount;


 partition = _FAT_partition_getPartitionFromPath (path);
 if (partition == ((void*)0))
   {
  r->_errno = ENODEV;
  return -1;
 }

 _FAT_lock(&partition->lock);

 if(memcmp(&buf->f_flag, "SCAN", 4) == 0)
 {

  _FAT_partition_createFSinfo(partition);
 }

 if(partition->filesysType == FS_FAT32)
  freeClusterCount = partition->fat.numberFreeCluster;
 else
  freeClusterCount = _FAT_fat_freeClusterCount (partition);


 buf->f_bsize = partition->bytesPerCluster;
 buf->f_frsize = partition->bytesPerCluster;

 buf->f_blocks = partition->fat.lastCluster - CLUSTER_FIRST + 1;
 buf->f_bfree = freeClusterCount;
 buf->f_bavail = freeClusterCount;


 buf->f_files = partition->fat.lastCluster - CLUSTER_FIRST + 1;
 buf->f_ffree = freeClusterCount;
 buf->f_favail = freeClusterCount;


 buf->f_fsid = _FAT_disc_hostType(partition->disc);


 buf->f_flag = ST_NOSUID
  | (partition->readOnly ? ST_RDONLY : 0 ) ;

 buf->f_namemax = NAME_MAX;

 _FAT_unlock(&partition->lock);
 return 0;
}
