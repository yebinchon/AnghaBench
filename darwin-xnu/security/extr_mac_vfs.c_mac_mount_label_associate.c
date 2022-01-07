
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vfs_context_t ;
struct TYPE_4__ {char* f_fstypename; char* f_mntfromname; char* f_mntonname; } ;
struct mount {int mnt_flag; TYPE_2__ mnt_vfsstat; int mnt_mntlabel; TYPE_1__* mnt_vtable; } ;
typedef int kauth_cred_t ;
struct TYPE_3__ {int vfc_vfsflags; } ;


 int MAC_PERFORM (int ,int ,struct mount*,int ) ;
 int MNT_MULTILABEL ;
 int MNT_ROOTFS ;
 int VFC_VFSNATIVEXATTR ;
 int VFC_VFSNOMACLABEL ;
 int mount_label_associate ;
 int printf (char*,char*,char*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int vfs_context_ucred (int ) ;

void
mac_mount_label_associate(vfs_context_t ctx, struct mount *mp)
{
 kauth_cred_t cred = vfs_context_ucred(ctx);




 if ((mp->mnt_flag & MNT_ROOTFS) &&
     (strcmp(mp->mnt_vfsstat.f_fstypename, "hfs") == 0))
  mp->mnt_flag |= MNT_MULTILABEL;


 if (strcmp(mp->mnt_vfsstat.f_fstypename, "devfs") == 0)
  mp->mnt_flag |= MNT_MULTILABEL;


 if (strcmp(mp->mnt_vfsstat.f_fstypename, "fdesc") == 0)
  mp->mnt_flag |= MNT_MULTILABEL;


 if (strcmp(mp->mnt_vfsstat.f_fstypename, "nfs") == 0)
  mp->mnt_flag |= MNT_MULTILABEL;


 if (strcmp(mp->mnt_vfsstat.f_fstypename, "afpfs") == 0)
  mp->mnt_flag |= MNT_MULTILABEL;

 if (mp->mnt_vtable != ((void*)0)) {

  if ((mp->mnt_vtable->vfc_vfsflags & VFC_VFSNATIVEXATTR))
   mp->mnt_flag |= MNT_MULTILABEL;


  if ((mp->mnt_vtable->vfc_vfsflags & VFC_VFSNOMACLABEL) &&
      (mp->mnt_flag & MNT_MULTILABEL))
   mp->mnt_flag &= ~MNT_MULTILABEL;
 }

 MAC_PERFORM(mount_label_associate, cred, mp, mp->mnt_mntlabel);







}
