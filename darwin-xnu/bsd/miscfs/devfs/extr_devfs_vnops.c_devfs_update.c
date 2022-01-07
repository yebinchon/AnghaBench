
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vnode {TYPE_1__* v_mount; } ;
struct timeval {int dummy; } ;
struct TYPE_6__ {scalar_t__ dn_update; scalar_t__ dn_change; scalar_t__ dn_access; } ;
typedef TYPE_2__ devnode_t ;
struct TYPE_5__ {int mnt_flag; } ;


 int DEVFS_ATTR_LOCK_SPIN () ;
 int DEVFS_ATTR_UNLOCK () ;
 int DEVFS_UPDATE_ACCESS ;
 int DEVFS_UPDATE_MOD ;
 int MNT_RDONLY ;
 TYPE_2__* VTODN (struct vnode*) ;
 int dn_times_locked (TYPE_2__*,struct timeval*,struct timeval*,struct timeval*,int) ;
 int microtime (struct timeval*) ;

__attribute__((used)) static int
devfs_update(struct vnode *vp, struct timeval *access, struct timeval *modify)
{
 devnode_t * ip;
 struct timeval now;

 ip = VTODN(vp);
 if (vp->v_mount->mnt_flag & MNT_RDONLY) {
         ip->dn_access = 0;
         ip->dn_change = 0;
         ip->dn_update = 0;

  return (0);
 }

 DEVFS_ATTR_LOCK_SPIN();
 microtime(&now);
 dn_times_locked(ip, access, modify, &now, DEVFS_UPDATE_ACCESS | DEVFS_UPDATE_MOD);
 DEVFS_ATTR_UNLOCK();

 return (0);
}
