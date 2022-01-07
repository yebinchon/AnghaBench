
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct mount {int dummy; } ;
typedef TYPE_2__* mount_t ;
struct TYPE_9__ {TYPE_1__* mnt_vtable; } ;
struct TYPE_8__ {int vfc_refcount; } ;


 int FREE_ZONE (TYPE_2__*,int,int ) ;
 int M_MOUNT ;
 int mac_mount_label_destroy (TYPE_2__*) ;
 int mount_list_lock () ;
 int mount_list_unlock () ;
 int mount_lock_destroy (TYPE_2__*) ;
 int vfs_unbusy (TYPE_2__*) ;

__attribute__((used)) static void
vfs_rootmountfailed(mount_t mp) {

 mount_list_lock();
 mp->mnt_vtable->vfc_refcount--;
 mount_list_unlock();

 vfs_unbusy(mp);

 mount_lock_destroy(mp);





 FREE_ZONE(mp, sizeof(struct mount), M_MOUNT);
}
