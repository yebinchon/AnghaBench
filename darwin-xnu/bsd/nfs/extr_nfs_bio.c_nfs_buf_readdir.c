
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct nfsmount {scalar_t__ nm_vers; } ;
struct nfsbuf {int nb_error; int nb_flags; int nb_np; } ;
typedef int nfsnode_t ;


 int ENXIO ;
 int NB_ERROR ;
 int NFSERR_DIRBUFDROPPED ;
 struct nfsmount* NFSTONMP (int ) ;
 scalar_t__ NFS_VER4 ;
 int SET (int ,int ) ;
 int nfs3_readdir_rpc (int ,struct nfsbuf*,int ) ;
 int nfs4_readdir_rpc (int ,struct nfsbuf*,int ) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;

int
nfs_buf_readdir(struct nfsbuf *bp, vfs_context_t ctx)
{
 nfsnode_t np = bp->nb_np;
 struct nfsmount *nmp = NFSTONMP(np);
 int error = 0;

 if (nfs_mount_gone(nmp))
  return (ENXIO);

 if (nmp->nm_vers < NFS_VER4)
  error = nfs3_readdir_rpc(np, bp, ctx);
 else
  error = nfs4_readdir_rpc(np, bp, ctx);

 if (error && (error != NFSERR_DIRBUFDROPPED)) {
  SET(bp->nb_flags, NB_ERROR);
  bp->nb_error = error;
 }
 return (error);
}
