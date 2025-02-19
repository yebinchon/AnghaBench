
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_int64_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsmount {int nm_state; int nm_vers; scalar_t__ nm_verf; int nm_lock; int nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef TYPE_2__* nfsnode_t ;
typedef int kauth_cred_t ;
struct TYPE_12__ {int nva_flags; } ;
struct TYPE_13__ {int n_fhsize; int n_fhp; TYPE_1__ n_vattr; } ;


 int EINVAL ;
 int ENXIO ;
 int EPROTO ;
 int FSDBG (int,TYPE_2__*,scalar_t__,scalar_t__,int) ;
 int NFSERR_STALEWRITEVERF ;
 int NFSPROC4_COMPOUND ;
 int NFSREQ_SECINFO_SET (struct nfsreq_secinfo_args*,TYPE_2__*,int *,int ,int *,int ) ;
 int NFSSTA_HASWRITEVERF ;
 struct nfsmount* NFSTONMP (TYPE_2__*) ;
 int NFSX_UNSIGNED ;
 int NFS_FFLAG_TRIGGER_REFERRAL ;
 scalar_t__ NFS_OP_COMMIT ;
 scalar_t__ NFS_OP_GETATTR ;
 scalar_t__ NFS_OP_PUTFH ;
 scalar_t__ UINT32_MAX ;
 int current_thread () ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int nfs_getattr_bitmap ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_node_lock (TYPE_2__*) ;
 int nfs_node_unlock (TYPE_2__*) ;
 int nfs_request2 (TYPE_2__*,int *,struct nfsm_chain*,int ,int ,int ,struct nfsreq_secinfo_args*,int ,struct nfsm_chain*,scalar_t__*,int*) ;
 int nfsm_assert (int,int,int ) ;
 int nfsm_chain_add_32 (int,struct nfsm_chain*,scalar_t__) ;
 int nfsm_chain_add_64 (int,struct nfsm_chain*,scalar_t__) ;
 int nfsm_chain_add_bitmap_supported (int,struct nfsm_chain*,int ,struct nfsmount*,TYPE_2__*) ;
 int nfsm_chain_add_compound_header (int,struct nfsm_chain*,char*,int ,int) ;
 int nfsm_chain_add_fh (int,struct nfsm_chain*,int,int ,int ) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,int) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_get_32 (int,struct nfsm_chain*,int) ;
 int nfsm_chain_get_64 (int,struct nfsm_chain*,scalar_t__) ;
 int nfsm_chain_loadattr (int,struct nfsm_chain*,TYPE_2__*,int,scalar_t__*) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 int nfsm_chain_op_check (int,struct nfsm_chain*,scalar_t__) ;
 int nfsm_chain_skip_tag (int,struct nfsm_chain*) ;
 int nfsmout_if (int) ;

int
nfs4_commit_rpc(
 nfsnode_t np,
 uint64_t offset,
 uint64_t count,
 kauth_cred_t cred,
 uint64_t wverf)
{
 struct nfsmount *nmp;
 int error = 0, lockerror, status, nfsvers, numops;
 u_int64_t xid, newwverf;
 uint32_t count32;
 struct nfsm_chain nmreq, nmrep;
 struct nfsreq_secinfo_args si;

 nmp = NFSTONMP(np);
 FSDBG(521, np, offset, count, nmp ? nmp->nm_state : 0);
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 if (np->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
  return (EINVAL);
 if (!(nmp->nm_state & NFSSTA_HASWRITEVERF))
  return (0);
 nfsvers = nmp->nm_vers;

 if (count > UINT32_MAX)
  count32 = 0;
 else
  count32 = count;

 NFSREQ_SECINFO_SET(&si, np, ((void*)0), 0, ((void*)0), 0);
 nfsm_chain_null(&nmreq);
 nfsm_chain_null(&nmrep);


 numops = 3;
 nfsm_chain_build_alloc_init(error, &nmreq, 19 * NFSX_UNSIGNED);
 nfsm_chain_add_compound_header(error, &nmreq, "commit", nmp->nm_minor_vers, numops);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_PUTFH);
 nfsm_chain_add_fh(error, &nmreq, nfsvers, np->n_fhp, np->n_fhsize);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_COMMIT);
 nfsm_chain_add_64(error, &nmreq, offset);
 nfsm_chain_add_32(error, &nmreq, count32);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_GETATTR);
 nfsm_chain_add_bitmap_supported(error, &nmreq, nfs_getattr_bitmap, nmp, np);
 nfsm_chain_build_done(error, &nmreq);
 nfsm_assert(error, (numops == 0), EPROTO);
 nfsmout_if(error);
 error = nfs_request2(np, ((void*)0), &nmreq, NFSPROC4_COMPOUND,
   current_thread(), cred, &si, 0, &nmrep, &xid, &status);

 if ((lockerror = nfs_node_lock(np)))
  error = lockerror;
 nfsm_chain_skip_tag(error, &nmrep);
 nfsm_chain_get_32(error, &nmrep, numops);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_PUTFH);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_COMMIT);
 nfsm_chain_get_64(error, &nmrep, newwverf);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_GETATTR);
 nfsm_chain_loadattr(error, &nmrep, np, nfsvers, &xid);
 if (!lockerror)
  nfs_node_unlock(np);
 nfsmout_if(error);
 lck_mtx_lock(&nmp->nm_lock);
 if (nmp->nm_verf != newwverf)
  nmp->nm_verf = newwverf;
 if (wverf != newwverf)
  error = NFSERR_STALEWRITEVERF;
 lck_mtx_unlock(&nmp->nm_lock);
nfsmout:
 nfsm_chain_cleanup(&nmreq);
 nfsm_chain_cleanup(&nmrep);
 return (error);
}
