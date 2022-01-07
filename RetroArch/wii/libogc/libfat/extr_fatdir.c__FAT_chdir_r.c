
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _reent {int _errno; } ;
struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ PARTITION ;


 int EINVAL ;
 int ENODEV ;
 int ENOTDIR ;
 scalar_t__ _FAT_directory_chdir (TYPE_1__*,char const*) ;
 int _FAT_lock (int *) ;
 TYPE_1__* _FAT_partition_getPartitionFromPath (char const*) ;
 int _FAT_unlock (int *) ;
 char* strchr (char const*,char) ;

int _FAT_chdir_r (struct _reent *r, const char *path) {
 PARTITION* partition = ((void*)0);


 partition = _FAT_partition_getPartitionFromPath (path);
 if (partition == ((void*)0)) {
  r->_errno = ENODEV;
  return -1;
 }


 if (strchr (path, ':') != ((void*)0)) {
  path = strchr (path, ':') + 1;
 }
 if (strchr (path, ':') != ((void*)0)) {
  r->_errno = EINVAL;
  return -1;
 }

 _FAT_lock(&partition->lock);


 if (_FAT_directory_chdir (partition, path)) {

  _FAT_unlock(&partition->lock);
  return 0;
 } else {

  _FAT_unlock(&partition->lock);
  r->_errno = ENOTDIR;
  return -1;
 }
}
