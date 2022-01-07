
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* nextOpenFile; } ;
struct TYPE_7__ {int lock; int cache; TYPE_2__* firstOpenFile; } ;
typedef TYPE_1__ PARTITION ;
typedef TYPE_2__ FILE_STRUCT ;


 int _FAT_cache_destructor (int ) ;
 int _FAT_lock (int *) ;
 int _FAT_lock_deinit (int *) ;
 int _FAT_mem_free (TYPE_1__*) ;
 int _FAT_partition_writeFSinfo (TYPE_1__*) ;
 int _FAT_syncToDisc (TYPE_2__*) ;
 int _FAT_unlock (int *) ;

void _FAT_partition_destructor (PARTITION* partition) {
 FILE_STRUCT* nextFile;

 _FAT_lock(&partition->lock);


 nextFile = partition->firstOpenFile;
 while (nextFile) {
  _FAT_syncToDisc (nextFile);
  nextFile = nextFile->nextOpenFile;
 }


 _FAT_partition_writeFSinfo(partition);


 _FAT_cache_destructor (partition->cache);


 _FAT_unlock(&partition->lock);
 _FAT_lock_deinit(&partition->lock);


 _FAT_mem_free (partition);
}
