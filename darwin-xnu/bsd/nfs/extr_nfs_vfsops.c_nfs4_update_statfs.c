
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef int uint32_t ;
typedef int u_int64_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct TYPE_12__ {int nfsa_bsize; } ;
struct nfsmount {int nm_vers; TYPE_7__ nm_fsattr; int nm_lock; int nm_minor_vers; TYPE_1__* nm_dnp; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_vattr {int dummy; } ;
typedef TYPE_1__* nfsnode_t ;
struct TYPE_11__ {int n_fhsize; int n_fhp; } ;


 int ENXIO ;
 int EPROTO ;
 int NFS4_STATFS_ATTRIBUTES (int *) ;
 int NFSPROC4_COMPOUND ;
 int NFSREQ_SECINFO_SET (struct nfsreq_secinfo_args*,TYPE_1__*,int *,int ,int *,int ) ;
 int NFSTONMP (TYPE_1__*) ;
 int NFSTOV (TYPE_1__*) ;
 int NFSX_UNSIGNED ;
 int NFS_ATTR_BITMAP_LEN ;
 int NFS_COPY_ATTRIBUTES (int ,int *) ;
 int NFS_FABLKSIZE ;
 int NFS_OP_GETATTR ;
 int NFS_OP_PUTFH ;
 int NVATTR_CLEANUP (struct nfs_vattr*) ;
 int NVATTR_INIT (struct nfs_vattr*) ;
 int R_SOFT ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int nfs4_parsefattr (struct nfsm_chain*,TYPE_7__*,struct nfs_vattr*,int *,int *,int *) ;
 int nfs_getattr_bitmap ;
 int nfs_loadattrcache (TYPE_1__*,struct nfs_vattr*,int *,int ) ;
 int nfs_node_lock (TYPE_1__*) ;
 int nfs_node_unlock (TYPE_1__*) ;
 int nfs_request2 (TYPE_1__*,int *,struct nfsm_chain*,int ,int ,int ,int *,int ,struct nfsm_chain*,int *,int*) ;
 int nfsm_assert (int,int,int) ;
 int nfsm_chain_add_32 (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_add_bitmap_supported (int,struct nfsm_chain*,int *,struct nfsmount*,TYPE_1__*) ;
 int nfsm_chain_add_compound_header (int,struct nfsm_chain*,char*,int ,int) ;
 int nfsm_chain_add_fh (int,struct nfsm_chain*,int,int ,int ) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,int) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_get_32 (int,struct nfsm_chain*,int) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 int nfsm_chain_op_check (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_skip_tag (int,struct nfsm_chain*) ;
 int nfsmout_if (int) ;
 int vfs_context_thread (int ) ;
 int vfs_context_ucred (int ) ;
 int vnode_get (int ) ;
 int vnode_put (int ) ;

int
nfs4_update_statfs(struct nfsmount *nmp, vfs_context_t ctx)
{
 nfsnode_t np;
 int error = 0, lockerror, status, nfsvers, numops;
 u_int64_t xid;
 struct nfsm_chain nmreq, nmrep;
 uint32_t bitmap[NFS_ATTR_BITMAP_LEN];
 struct nfs_vattr nvattr;
 struct nfsreq_secinfo_args si;

 nfsvers = nmp->nm_vers;
 np = nmp->nm_dnp;
 if (!np)
  return (ENXIO);
 if ((error = vnode_get(NFSTOV(np))))
  return (error);

 NFSREQ_SECINFO_SET(&si, np, ((void*)0), 0, ((void*)0), 0);
 NVATTR_INIT(&nvattr);
 nfsm_chain_null(&nmreq);
 nfsm_chain_null(&nmrep);


 numops = 2;
 nfsm_chain_build_alloc_init(error, &nmreq, 15 * NFSX_UNSIGNED);
 nfsm_chain_add_compound_header(error, &nmreq, "statfs", nmp->nm_minor_vers, numops);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_PUTFH);
 nfsm_chain_add_fh(error, &nmreq, nfsvers, np->n_fhp, np->n_fhsize);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_GETATTR);
 NFS_COPY_ATTRIBUTES(nfs_getattr_bitmap, bitmap);
 NFS4_STATFS_ATTRIBUTES(bitmap);
 nfsm_chain_add_bitmap_supported(error, &nmreq, bitmap, nmp, np);
 nfsm_chain_build_done(error, &nmreq);
 nfsm_assert(error, (numops == 0), EPROTO);
 nfsmout_if(error);
 error = nfs_request2(np, ((void*)0), &nmreq, NFSPROC4_COMPOUND,
  vfs_context_thread(ctx), vfs_context_ucred(ctx),
  ((void*)0), R_SOFT, &nmrep, &xid, &status);
 nfsm_chain_skip_tag(error, &nmrep);
 nfsm_chain_get_32(error, &nmrep, numops);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_PUTFH);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_GETATTR);
 nfsm_assert(error, NFSTONMP(np), ENXIO);
 nfsmout_if(error);
 lck_mtx_lock(&nmp->nm_lock);
 error = nfs4_parsefattr(&nmrep, &nmp->nm_fsattr, &nvattr, ((void*)0), ((void*)0), ((void*)0));
 lck_mtx_unlock(&nmp->nm_lock);
 nfsmout_if(error);
 if ((lockerror = nfs_node_lock(np)))
  error = lockerror;
 if (!error)
  nfs_loadattrcache(np, &nvattr, &xid, 0);
 if (!lockerror)
  nfs_node_unlock(np);
 nfsm_assert(error, NFSTONMP(np), ENXIO);
 nfsmout_if(error);
 nmp->nm_fsattr.nfsa_bsize = NFS_FABLKSIZE;
nfsmout:
 NVATTR_CLEANUP(&nvattr);
 nfsm_chain_cleanup(&nmreq);
 nfsm_chain_cleanup(&nmrep);
 vnode_put(NFSTOV(np));
 return (error);
}
