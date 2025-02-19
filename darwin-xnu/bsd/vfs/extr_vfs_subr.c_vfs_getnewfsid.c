
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int* val; } ;
struct TYPE_8__ {TYPE_2__ f_fsid; } ;
struct mount {TYPE_3__ mnt_vfsstat; TYPE_1__* mnt_vtable; } ;
struct TYPE_9__ {int* val; } ;
typedef TYPE_4__ fsid_t ;
struct TYPE_6__ {int vfc_typenum; } ;


 void* makedev (scalar_t__,scalar_t__) ;
 scalar_t__ mntid_gen ;
 int mount_list_lock () ;
 int mount_list_unlock () ;
 scalar_t__ nblkdev ;
 scalar_t__ vfs_getvfs_locked (TYPE_4__*) ;

void
vfs_getnewfsid(struct mount *mp)
{

 fsid_t tfsid;
 int mtype;

 mount_list_lock();


 mtype = mp->mnt_vtable->vfc_typenum;
 if (++mntid_gen == 0)
  mntid_gen++;
 tfsid.val[0] = makedev(nblkdev + mtype, mntid_gen);
 tfsid.val[1] = mtype;

 while (vfs_getvfs_locked(&tfsid)) {
  if (++mntid_gen == 0)
   mntid_gen++;
  tfsid.val[0] = makedev(nblkdev + mtype, mntid_gen);
 }

 mp->mnt_vfsstat.f_fsid.val[0] = tfsid.val[0];
 mp->mnt_vfsstat.f_fsid.val[1] = tfsid.val[1];
 mount_list_unlock();
}
