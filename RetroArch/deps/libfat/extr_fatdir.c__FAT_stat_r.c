
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int dummy; } ;
struct _reent {int _errno; } ;
struct TYPE_5__ {int lock; } ;
typedef TYPE_1__ PARTITION ;
typedef int DIR_ENTRY ;


 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 int _FAT_directory_entryFromPath (TYPE_1__*,int *,char const*,int *) ;
 int _FAT_directory_entryStat (TYPE_1__*,int *,struct stat*) ;
 int _FAT_lock (int *) ;
 TYPE_1__* _FAT_partition_getPartitionFromPath (char const*) ;
 int _FAT_unlock (int *) ;
 char* strchr (char const*,char) ;

int _FAT_stat_r (struct _reent *r, const char *path, struct stat *st)
{
 PARTITION* partition = ((void*)0);
 DIR_ENTRY dirEntry;


 partition = _FAT_partition_getPartitionFromPath (path);
 if (partition == ((void*)0))
   {
  r->_errno = ENODEV;
  return -1;
 }


 if (strchr (path, ':') != ((void*)0))
  path = strchr (path, ':') + 1;
 if (strchr (path, ':') != ((void*)0))
   {
  r->_errno = EINVAL;
  return -1;
 }

 _FAT_lock(&partition->lock);


 if (!_FAT_directory_entryFromPath (partition, &dirEntry, path, ((void*)0)))
   {
  _FAT_unlock(&partition->lock);
  r->_errno = ENOENT;
  return -1;
 }


 _FAT_directory_entryStat (partition, &dirEntry, st);

 _FAT_unlock(&partition->lock);
 return 0;
}
