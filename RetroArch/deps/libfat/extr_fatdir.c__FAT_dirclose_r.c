
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct _reent {int dummy; } ;
struct TYPE_7__ {scalar_t__ dirStruct; } ;
struct TYPE_6__ {int inUse; TYPE_1__* partition; } ;
struct TYPE_5__ {int lock; } ;
typedef TYPE_2__ DIR_STATE_STRUCT ;
typedef TYPE_3__ DIR_ITER ;


 int _FAT_lock (int *) ;
 int _FAT_unlock (int *) ;

int _FAT_dirclose_r (struct _reent *r, DIR_ITER *dirState)
{
 DIR_STATE_STRUCT* state = (DIR_STATE_STRUCT*) (dirState->dirStruct);


 _FAT_lock(&state->partition->lock);
 state->inUse = 0;
 _FAT_unlock(&state->partition->lock);

 return 0;
}
