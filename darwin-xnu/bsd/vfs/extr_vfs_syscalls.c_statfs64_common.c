
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int user_addr_t ;
struct vfsstatfs {int * f_mntfromname; int * f_mntonname; int * f_fstypename; int f_fssubtype; int f_owner; int f_fsid; int f_ffree; int f_files; int f_bavail; int f_bfree; int f_blocks; scalar_t__ f_iosize; int f_bsize; } ;
struct statfs64 {int f_flags; int * f_mntfromname; int * f_mntonname; int * f_fstypename; int f_fssubtype; int f_type; int f_owner; int f_fsid; int f_ffree; int f_files; int f_bavail; int f_bfree; int f_blocks; scalar_t__ f_iosize; int f_bsize; } ;
struct mount {int mnt_flag; int mnt_kern_flag; int * fstypename_override; TYPE_1__* mnt_vtable; } ;
typedef int sfs ;
typedef scalar_t__ int32_t ;
typedef int caddr_t ;
struct TYPE_2__ {int vfc_typenum; } ;


 int MAXPATHLEN ;
 int MFSTYPENAMELEN ;
 int MNTK_TYPENAME_OVERRIDE ;
 int MNT_VISFLAGMASK ;
 int bzero (struct statfs64*,int) ;
 int copyout (int ,int ,int) ;
 int strlcpy (int *,int *,int ) ;

__attribute__((used)) static int
statfs64_common(struct mount *mp, struct vfsstatfs *sfsp, user_addr_t bufp)
{
 int error;
 struct statfs64 sfs;

 bzero(&sfs, sizeof(sfs));

 sfs.f_bsize = sfsp->f_bsize;
 sfs.f_iosize = (int32_t)sfsp->f_iosize;
 sfs.f_blocks = sfsp->f_blocks;
 sfs.f_bfree = sfsp->f_bfree;
 sfs.f_bavail = sfsp->f_bavail;
 sfs.f_files = sfsp->f_files;
 sfs.f_ffree = sfsp->f_ffree;
 sfs.f_fsid = sfsp->f_fsid;
 sfs.f_owner = sfsp->f_owner;
 sfs.f_type = mp->mnt_vtable->vfc_typenum;
 sfs.f_flags = mp->mnt_flag & MNT_VISFLAGMASK;
 sfs.f_fssubtype = sfsp->f_fssubtype;
 if (mp->mnt_kern_flag & MNTK_TYPENAME_OVERRIDE) {
  strlcpy(&sfs.f_fstypename[0], &mp->fstypename_override[0], MFSTYPENAMELEN);
 } else {
  strlcpy(&sfs.f_fstypename[0], &sfsp->f_fstypename[0], MFSTYPENAMELEN);
 }
 strlcpy(&sfs.f_mntonname[0], &sfsp->f_mntonname[0], MAXPATHLEN);
 strlcpy(&sfs.f_mntfromname[0], &sfsp->f_mntfromname[0], MAXPATHLEN);

 error = copyout((caddr_t)&sfs, bufp, sizeof(sfs));

 return(error);
}
