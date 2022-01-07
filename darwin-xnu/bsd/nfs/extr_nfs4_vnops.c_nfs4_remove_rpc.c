
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u_int64_t ;
typedef int thread_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsmount {int nm_vers; int nm_state; int nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef TYPE_2__* nfsnode_t ;
typedef int kauth_cred_t ;
struct TYPE_13__ {int nva_flags; } ;
struct TYPE_14__ {int n_flag; int n_fhsize; int n_fhp; TYPE_1__ n_vattr; } ;


 int EINVAL ;
 int ENOENT ;
 int ENXIO ;
 int EPROTO ;
 int NATTRINVALIDATE (TYPE_2__*) ;
 int NFSERR_GRACE ;
 int NFSPROC4_COMPOUND ;
 int NFSREQ_SECINFO_SET (struct nfsreq_secinfo_args*,TYPE_2__*,int *,int ,int *,int ) ;
 struct nfsmount* NFSTONMP (TYPE_2__*) ;
 int NFSX_UNSIGNED ;
 int NFS_FFLAG_TRIGGER_REFERRAL ;
 int NFS_OP_GETATTR ;
 int NFS_OP_PUTFH ;
 int NFS_OP_REMOVE ;
 int NMODIFIED ;
 scalar_t__ PZERO ;
 int hz ;
 int nfs_getattr_bitmap ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_node_lock (TYPE_2__*) ;
 int nfs_node_unlock (TYPE_2__*) ;
 int nfs_request2 (TYPE_2__*,int *,struct nfsm_chain*,int ,int ,int ,struct nfsreq_secinfo_args*,int ,struct nfsm_chain*,int *,int*) ;
 int nfsm_assert (int,int,int ) ;
 int nfsm_chain_add_32 (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_add_bitmap_supported (int,struct nfsm_chain*,int ,struct nfsmount*,TYPE_2__*) ;
 int nfsm_chain_add_compound_header (int,struct nfsm_chain*,char*,int ,int) ;
 int nfsm_chain_add_fh (int,struct nfsm_chain*,int,int ,int ) ;
 int nfsm_chain_add_name (int,struct nfsm_chain*,char*,int,struct nfsmount*) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,int) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_check_change_info (int,struct nfsm_chain*,TYPE_2__*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_get_32 (int,struct nfsm_chain*,int) ;
 int nfsm_chain_loadattr (int,struct nfsm_chain*,TYPE_2__*,int,int *) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 int nfsm_chain_op_check (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_skip_tag (int,struct nfsm_chain*) ;
 int nfsmout_if (int) ;
 int tsleep (int *,scalar_t__,char*,int) ;

int
nfs4_remove_rpc(
 nfsnode_t dnp,
 char *name,
 int namelen,
 thread_t thd,
 kauth_cred_t cred)
{
 int error = 0, lockerror = ENOENT, remove_error = 0, status;
 struct nfsmount *nmp;
 int nfsvers, numops;
 u_int64_t xid;
 struct nfsm_chain nmreq, nmrep;
 struct nfsreq_secinfo_args si;

 nmp = NFSTONMP(dnp);
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 nfsvers = nmp->nm_vers;
 if (dnp->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
  return (EINVAL);
 NFSREQ_SECINFO_SET(&si, dnp, ((void*)0), 0, ((void*)0), 0);
restart:
 nfsm_chain_null(&nmreq);
 nfsm_chain_null(&nmrep);


 numops = 3;
 nfsm_chain_build_alloc_init(error, &nmreq, 17 * NFSX_UNSIGNED + namelen);
 nfsm_chain_add_compound_header(error, &nmreq, "remove", nmp->nm_minor_vers, numops);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_PUTFH);
 nfsm_chain_add_fh(error, &nmreq, nfsvers, dnp->n_fhp, dnp->n_fhsize);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_REMOVE);
 nfsm_chain_add_name(error, &nmreq, name, namelen, nmp);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_GETATTR);
 nfsm_chain_add_bitmap_supported(error, &nmreq, nfs_getattr_bitmap, nmp, dnp);
 nfsm_chain_build_done(error, &nmreq);
 nfsm_assert(error, (numops == 0), EPROTO);
 nfsmout_if(error);

 error = nfs_request2(dnp, ((void*)0), &nmreq, NFSPROC4_COMPOUND, thd, cred, &si, 0, &nmrep, &xid, &status);

 if ((lockerror = nfs_node_lock(dnp)))
  error = lockerror;
 nfsm_chain_skip_tag(error, &nmrep);
 nfsm_chain_get_32(error, &nmrep, numops);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_PUTFH);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_REMOVE);
 remove_error = error;
 nfsm_chain_check_change_info(error, &nmrep, dnp);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_GETATTR);
 nfsm_chain_loadattr(error, &nmrep, dnp, nfsvers, &xid);
 if (error && !lockerror)
  NATTRINVALIDATE(dnp);
nfsmout:
 nfsm_chain_cleanup(&nmreq);
 nfsm_chain_cleanup(&nmrep);

 if (!lockerror) {
  dnp->n_flag |= NMODIFIED;
  nfs_node_unlock(dnp);
 }
 if (error == NFSERR_GRACE) {
  tsleep(&nmp->nm_state, (PZERO-1), "nfsgrace", 2*hz);
  goto restart;
 }

 return (remove_error);
}
