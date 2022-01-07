
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct stat {int dummy; } ;
struct _reent {int _errno; } ;
struct TYPE_11__ {int filename; } ;
struct TYPE_10__ {int lock; } ;
struct TYPE_9__ {scalar_t__ dirStruct; } ;
struct TYPE_8__ {TYPE_4__* partition; TYPE_5__ currentEntry; scalar_t__ validEntry; int inUse; } ;
typedef TYPE_1__ DIR_STATE_STRUCT ;
typedef TYPE_2__ DIR_ITER ;


 int EBADF ;
 int NAME_MAX ;
 int _FAT_directory_entryStat (TYPE_4__*,TYPE_5__*,struct stat*) ;
 scalar_t__ _FAT_directory_getNextEntry (TYPE_4__*,TYPE_5__*) ;
 int _FAT_lock (int *) ;
 int _FAT_unlock (int *) ;
 int strncpy (char*,int ,int ) ;

int _FAT_dirnext_r (struct _reent *r, DIR_ITER *dirState, char *filename, struct stat *filestat)
{
 DIR_STATE_STRUCT* state = (DIR_STATE_STRUCT*) (dirState->dirStruct);

 _FAT_lock(&state->partition->lock);


 if (!state->inUse)
   {
  _FAT_unlock(&state->partition->lock);
  r->_errno = EBADF;
  return -1;
 }


 if (! state->validEntry)
   {
  _FAT_unlock(&state->partition->lock);
  return -1;
 }


 strncpy (filename, state->currentEntry.filename, NAME_MAX);

 if (filestat != ((void*)0))
  _FAT_directory_entryStat (state->partition, &(state->currentEntry), filestat);


 state->validEntry =
  _FAT_directory_getNextEntry (state->partition, &(state->currentEntry));

 _FAT_unlock(&state->partition->lock);
 return 0;
}
