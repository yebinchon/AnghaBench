
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct _reent {int _errno; } ;
struct TYPE_9__ {scalar_t__ sector; scalar_t__ cluster; } ;
struct TYPE_8__ {scalar_t__ sectorsPerCluster; } ;
typedef TYPE_1__ PARTITION ;
typedef TYPE_2__ FILE_POSITION ;


 scalar_t__ CLUSTER_EOF ;
 scalar_t__ CLUSTER_FREE ;
 int EINVAL ;
 int ENOSPC ;
 int _FAT_fat_isValidCluster (TYPE_1__*,scalar_t__) ;
 scalar_t__ _FAT_fat_linkFreeCluster (TYPE_1__*,scalar_t__) ;
 scalar_t__ _FAT_fat_nextCluster (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static bool _FAT_check_position_for_next_cluster(struct _reent *r,
  FILE_POSITION *position, PARTITION* partition, size_t remain, bool *flagNoError)
{
 uint32_t tempNextCluster;

 if (remain == 0) return 1;
 if (flagNoError && *flagNoError == 0) return 0;
 if (position->sector > partition->sectorsPerCluster) {

  r->_errno = EINVAL;
  goto err;
 }
 if (position->sector == partition->sectorsPerCluster) {

  tempNextCluster = _FAT_fat_nextCluster(partition, position->cluster);
  if ((tempNextCluster == CLUSTER_EOF) || (tempNextCluster == CLUSTER_FREE)) {

   tempNextCluster = _FAT_fat_linkFreeCluster(partition, position->cluster);
  }
  if (!_FAT_fat_isValidCluster(partition, tempNextCluster)) {

   r->_errno = ENOSPC;
   goto err;
  }
  position->sector = 0;
  position->cluster = tempNextCluster;
 }
 return 1;
err:
 if (flagNoError) *flagNoError = 0;
 return 0;
}
