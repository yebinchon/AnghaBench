
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct nfsmount {scalar_t__ nm_vers; } ;
struct componentname {int dummy; } ;
typedef int nfsnode_t ;


 struct nfsmount* NFSTONMP (int ) ;
 int NFSTOV (int ) ;
 scalar_t__ NFS_VER2 ;
 scalar_t__ NMFLAG (struct nfsmount*,int ) ;
 int RDIRPLUS ;
 int cache_purge (int ) ;
 int nfs_dir_buf_cache_lookup (int ,int *,struct componentname*,int ,int) ;

void
nfs_name_cache_purge(nfsnode_t dnp, nfsnode_t np, struct componentname *cnp, vfs_context_t ctx)
{
 struct nfsmount *nmp = NFSTONMP(dnp);

 cache_purge(NFSTOV(np));
 if (nmp && (nmp->nm_vers > NFS_VER2) && NMFLAG(nmp, RDIRPLUS))
  nfs_dir_buf_cache_lookup(dnp, ((void*)0), cnp, ctx, 1);
}
