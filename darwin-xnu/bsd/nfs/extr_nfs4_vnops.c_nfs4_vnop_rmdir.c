
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int vnode_t ;
typedef int vfs_context_t ;
struct vnop_rmdir_args {struct componentname* a_cnp; int a_dvp; int a_vp; int a_context; } ;
struct TYPE_18__ {int nfsa_flags; } ;
struct nfsmount {TYPE_1__ nm_fsattr; } ;
struct nfs_dulookup {int dummy; } ;
struct componentname {int cn_namelen; int cn_nameptr; } ;
typedef TYPE_2__* nfsnode_t ;
struct TYPE_19__ {int n_hflag; int n_flag; } ;


 int EINVAL ;
 int ENOENT ;
 int ENXIO ;
 int FSDBG (int,int ,TYPE_2__*,int ,int) ;
 int LIST_REMOVE (TYPE_2__*,int ) ;
 struct nfsmount* NFSTONMP (TYPE_2__*) ;
 int NFS_FSFLAG_NAMED_ATTR ;
 int NGA_CACHED ;
 int NHHASHED ;
 scalar_t__ VDIR ;
 TYPE_2__* VTONFS (int ) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int n_hash ;
 int nfs4_remove_rpc (TYPE_2__*,int ,int ,int ,int ) ;
 int nfs_dulookup_finish (struct nfs_dulookup*,TYPE_2__*,int ) ;
 int nfs_dulookup_init (struct nfs_dulookup*,TYPE_2__*,int ,int ,int ) ;
 int nfs_dulookup_start (struct nfs_dulookup*,TYPE_2__*,int ) ;
 int nfs_getattr (TYPE_2__*,int *,int ,int ) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_name_cache_purge (TYPE_2__*,TYPE_2__*,struct componentname*,int ) ;
 int nfs_node_clear_busy2 (TYPE_2__*,TYPE_2__*) ;
 int nfs_node_hash_mutex ;
 int nfs_node_set_busy2 (TYPE_2__*,TYPE_2__*,int ) ;
 int vfs_context_thread (int ) ;
 int vfs_context_ucred (int ) ;
 scalar_t__ vnode_vtype (int ) ;

int
nfs4_vnop_rmdir(
 struct vnop_rmdir_args *ap)






{
 vfs_context_t ctx = ap->a_context;
 vnode_t vp = ap->a_vp;
 vnode_t dvp = ap->a_dvp;
 struct componentname *cnp = ap->a_cnp;
 struct nfsmount *nmp;
 int error = 0, namedattrs;
 nfsnode_t np = VTONFS(vp);
 nfsnode_t dnp = VTONFS(dvp);
 struct nfs_dulookup dul;

 if (vnode_vtype(vp) != VDIR)
  return (EINVAL);

 nmp = NFSTONMP(dnp);
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 namedattrs = (nmp->nm_fsattr.nfsa_flags & NFS_FSFLAG_NAMED_ATTR);

 if ((error = nfs_node_set_busy2(dnp, np, vfs_context_thread(ctx))))
  return (error);

 if (!namedattrs) {
  nfs_dulookup_init(&dul, dnp, cnp->cn_nameptr, cnp->cn_namelen, ctx);
  nfs_dulookup_start(&dul, dnp, ctx);
 }

 error = nfs4_remove_rpc(dnp, cnp->cn_nameptr, cnp->cn_namelen,
   vfs_context_thread(ctx), vfs_context_ucred(ctx));

 nfs_name_cache_purge(dnp, np, cnp, ctx);

 nfs_getattr(dnp, ((void*)0), ctx, NGA_CACHED);
 if (!namedattrs)
  nfs_dulookup_finish(&dul, dnp, ctx);
 nfs_node_clear_busy2(dnp, np);




 if (error == ENOENT)
  error = 0;
 if (!error) {





  lck_mtx_lock(nfs_node_hash_mutex);
  if (np->n_hflag & NHHASHED) {
   LIST_REMOVE(np, n_hash);
   np->n_hflag &= ~NHHASHED;
   FSDBG(266, 0, np, np->n_flag, 0xb1eb1e);
  }
  lck_mtx_unlock(nfs_node_hash_mutex);
 }
 return (error);
}
