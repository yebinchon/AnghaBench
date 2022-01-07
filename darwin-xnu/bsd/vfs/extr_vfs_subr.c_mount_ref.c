
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
struct TYPE_5__ {int mnt_count; } ;


 int mount_lock_spin (TYPE_1__*) ;
 int mount_unlock (TYPE_1__*) ;

void
mount_ref(mount_t mp, int locked)
{
        if ( !locked)
         mount_lock_spin(mp);

 mp->mnt_count++;

        if ( !locked)
         mount_unlock(mp);
}
