
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct stat {int st_mode; int st_nlink; int st_uid; int st_gid; int st_size; int st_blksize; int st_blocks; scalar_t__* st_spare4; scalar_t__ st_spare3; void* st_ctime; scalar_t__ st_spare2; void* st_mtime; scalar_t__ st_spare1; void* st_atime; int st_dev; int st_rdev; scalar_t__ st_ino; } ;
typedef scalar_t__ ino_t ;
struct TYPE_9__ {int entryData; } ;
struct TYPE_8__ {int bytesPerSector; int disc; } ;
typedef TYPE_1__ PARTITION ;
typedef TYPE_2__ DIR_ENTRY ;


 int DIR_ENTRY_aDate ;
 int DIR_ENTRY_cDate ;
 int DIR_ENTRY_cTime ;
 int DIR_ENTRY_fileSize ;
 int DIR_ENTRY_mDate ;
 int DIR_ENTRY_mTime ;
 int S_IFDIR ;
 int S_IFREG ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 scalar_t__ _FAT_directory_entryGetCluster (TYPE_1__*,int ) ;
 scalar_t__ _FAT_directory_isDirectory (TYPE_2__*) ;
 scalar_t__ _FAT_directory_isWritable (TYPE_2__*) ;
 int _FAT_disc_hostType (int ) ;
 void* _FAT_filetime_to_time_t (int ,int ) ;
 int u8array_to_u16 (int ,int ) ;
 int u8array_to_u32 (int ,int ) ;

void _FAT_directory_entryStat (PARTITION* partition, DIR_ENTRY* entry, struct stat *st) {


 st->st_dev = _FAT_disc_hostType(partition->disc);
   st->st_ino = (ino_t)(_FAT_directory_entryGetCluster(partition, entry->entryData));
 st->st_mode = (_FAT_directory_isDirectory(entry) ? S_IFDIR : S_IFREG) |
  (S_IRUSR | S_IRGRP | S_IROTH) |
  (_FAT_directory_isWritable (entry) ? (S_IWUSR | S_IWGRP | S_IWOTH) : 0);
 st->st_nlink = 1;
 st->st_uid = 1;
 st->st_gid = 2;
 st->st_rdev = st->st_dev;
 st->st_size = u8array_to_u32 (entry->entryData, DIR_ENTRY_fileSize);
 st->st_atime = _FAT_filetime_to_time_t (
  0,
  u8array_to_u16 (entry->entryData, DIR_ENTRY_aDate)
 );
 st->st_spare1 = 0;
 st->st_mtime = _FAT_filetime_to_time_t (
  u8array_to_u16 (entry->entryData, DIR_ENTRY_mTime),
  u8array_to_u16 (entry->entryData, DIR_ENTRY_mDate)
 );
 st->st_spare2 = 0;
 st->st_ctime = _FAT_filetime_to_time_t (
  u8array_to_u16 (entry->entryData, DIR_ENTRY_cTime),
  u8array_to_u16 (entry->entryData, DIR_ENTRY_cDate)
 );
 st->st_spare3 = 0;
 st->st_blksize = partition->bytesPerSector;
 st->st_blocks = (st->st_size + partition->bytesPerSector - 1) / partition->bytesPerSector;
 st->st_spare4[0] = 0;
 st->st_spare4[1] = 0;
}
