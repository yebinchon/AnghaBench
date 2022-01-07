
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct _reent {int _errno; } ;
struct TYPE_15__ {int lock; } ;
struct TYPE_14__ {int entryData; } ;
struct TYPE_13__ {scalar_t__ dirStruct; } ;
struct TYPE_12__ {int inUse; TYPE_4__* partition; int startCluster; int currentEntry; int validEntry; } ;
typedef TYPE_1__ DIR_STATE_STRUCT ;
typedef TYPE_2__ DIR_ITER ;
typedef TYPE_3__ DIR_ENTRY ;


 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 int ENOTDIR ;
 int _FAT_directory_entryFromPath (TYPE_4__*,TYPE_3__*,char const*,int *) ;
 int _FAT_directory_entryGetCluster (TYPE_4__*,int ) ;
 int _FAT_directory_getFirstEntry (TYPE_4__*,int *,int ) ;
 int _FAT_directory_isDirectory (TYPE_3__*) ;
 int _FAT_lock (int *) ;
 TYPE_4__* _FAT_partition_getPartitionFromPath (char const*) ;
 int _FAT_unlock (int *) ;
 char* strchr (char const*,char) ;

DIR_ITER* _FAT_diropen_r(struct _reent *r, DIR_ITER *dirState, const char *path)
{
 DIR_ENTRY dirEntry;
 DIR_STATE_STRUCT* state = (DIR_STATE_STRUCT*) (dirState->dirStruct);
 bool fileExists;

 state->partition = _FAT_partition_getPartitionFromPath (path);
 if (state->partition == ((void*)0))
   {
  r->_errno = ENODEV;
  return ((void*)0);
 }


 if (strchr (path, ':') != ((void*)0))
  path = strchr (path, ':') + 1;
 if (strchr (path, ':') != ((void*)0))
   {
  r->_errno = EINVAL;
  return ((void*)0);
 }

 _FAT_lock(&state->partition->lock);


 fileExists = _FAT_directory_entryFromPath (state->partition, &dirEntry, path, ((void*)0));

 if (!fileExists)
   {
  _FAT_unlock(&state->partition->lock);
  r->_errno = ENOENT;
  return ((void*)0);
 }


 if (! _FAT_directory_isDirectory (&dirEntry))
   {
  _FAT_unlock(&state->partition->lock);
  r->_errno = ENOTDIR;
  return ((void*)0);
 }


 state->startCluster = _FAT_directory_entryGetCluster (state->partition, dirEntry.entryData);


 state->validEntry =
  _FAT_directory_getFirstEntry (state->partition, &(state->currentEntry), state->startCluster);


 state->inUse = 1;
 _FAT_unlock(&state->partition->lock);
 return (DIR_ITER*) state;
}
