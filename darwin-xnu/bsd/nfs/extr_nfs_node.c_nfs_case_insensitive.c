
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nfsa_flags; } ;
struct nfsmount {scalar_t__ nm_vers; int nm_state; int nm_lock; TYPE_1__ nm_fsattr; } ;
typedef int mount_t ;


 int NFSSTA_GOTPATHCONF ;
 int NFS_FSFLAG_CASE_INSENSITIVE ;
 int NFS_FSFLAG_HOMOGENEOUS ;
 scalar_t__ NFS_VER2 ;
 scalar_t__ NFS_VER3 ;
 struct nfsmount* VFSTONFS (int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;

int
nfs_case_insensitive(mount_t mp)
{
 struct nfsmount *nmp = VFSTONFS(mp);
 int answer = 0;
 int skip = 0;

 if (nfs_mount_gone(nmp)) {
  return (0);
 }

 if (nmp->nm_vers == NFS_VER2) {

  return (0);
 }

 lck_mtx_lock(&nmp->nm_lock);
 if (nmp->nm_vers == NFS_VER3) {
  if (!(nmp->nm_state & NFSSTA_GOTPATHCONF)) {




   skip = 1;
  }
 } else if (!(nmp->nm_fsattr.nfsa_flags & NFS_FSFLAG_HOMOGENEOUS)) {

  skip = 1;
 }

 if (!skip && (nmp->nm_fsattr.nfsa_flags & NFS_FSFLAG_CASE_INSENSITIVE))
  answer = 1;

 lck_mtx_unlock(&nmp->nm_lock);

 return (answer);
}
