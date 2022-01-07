
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
struct TYPE_5__ {scalar_t__ mnt_count; int mnt_lflag; } ;


 int MNT_LDRAIN ;
 int mount_lock_spin (TYPE_1__*) ;
 int mount_unlock (TYPE_1__*) ;
 int wakeup (int*) ;

void
mount_drop(mount_t mp, int locked)
{
        if ( !locked)
         mount_lock_spin(mp);

 mp->mnt_count--;

 if (mp->mnt_count == 0 && (mp->mnt_lflag & MNT_LDRAIN))
         wakeup(&mp->mnt_lflag);

        if ( !locked)
         mount_unlock(mp);
}
