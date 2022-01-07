
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct _reent {int _errno; } ;
struct TYPE_7__ {int lock; } ;
struct TYPE_6__ {scalar_t__ dirStruct; } ;
struct TYPE_5__ {TYPE_4__* partition; int startCluster; int currentEntry; int validEntry; int inUse; } ;
typedef TYPE_1__ DIR_STATE_STRUCT ;
typedef TYPE_2__ DIR_ITER ;


 int EBADF ;
 int _FAT_directory_getFirstEntry (TYPE_4__*,int *,int ) ;
 int _FAT_lock (int *) ;
 int _FAT_unlock (int *) ;

int _FAT_dirreset_r (struct _reent *r, DIR_ITER *dirState)
{
 DIR_STATE_STRUCT* state = (DIR_STATE_STRUCT*) (dirState->dirStruct);

 _FAT_lock(&state->partition->lock);


 if (!state->inUse)
   {
  _FAT_unlock(&state->partition->lock);
  r->_errno = EBADF;
  return -1;
 }


 state->validEntry =
  _FAT_directory_getFirstEntry (state->partition, &(state->currentEntry), state->startCluster);

 _FAT_unlock(&state->partition->lock);
 return 0;
}
