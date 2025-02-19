
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef scalar_t__ uint32_t ;
typedef int u_int64_t ;
struct nfsreq {int r_secinfo; } ;
struct nfsmount {int nm_vers; int nm_state; int nm_lock; int nm_auth; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_vattr {int dummy; } ;
struct nfs_sec {int * flavors; scalar_t__ count; } ;
typedef int nfsnode_t ;
struct TYPE_4__ {int fh_len; int fh_data; } ;
typedef TYPE_1__ fhandle_t ;


 int EBADRPC ;
 int ENOENT ;
 int ENXIO ;
 int NFSERR_INVAL ;
 int NFSERR_MOVED ;
 int NFSERR_OP_ILLEGAL ;
 int NFSSTA_NEEDSECINFO ;
 struct nfsmount* NFSTONMP (int ) ;
 scalar_t__ NFS_OP_GETATTR ;
 scalar_t__ NFS_OP_GETFH ;
 scalar_t__ NFS_OP_LOOKUP ;
 scalar_t__ NFS_OP_LOOKUPP ;
 scalar_t__ NFS_OP_PUTFH ;
 scalar_t__ NX_MAX_SEC_FLAVORS ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int nfs4_default_attrs_for_referral_trigger (int ,char*,int,struct nfs_vattr*,TYPE_1__*) ;
 int nfs4_parsefattr (struct nfsm_chain*,int *,struct nfs_vattr*,int *,int *,int *) ;
 int nfs4_secinfo_rpc (struct nfsmount*,int *,int ,int *,scalar_t__*) ;
 int nfs_node_lock (int ) ;
 int nfs_node_unlock (int ) ;
 int nfs_request_async_finish (struct nfsreq*,struct nfsm_chain*,int *,int*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_get_32 (int,struct nfsm_chain*,int) ;
 int nfsm_chain_get_opaque (int,struct nfsm_chain*,int,int ) ;
 int nfsm_chain_loadattr (int,struct nfsm_chain*,int ,int,int *) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 int nfsm_chain_op_check (int,struct nfsm_chain*,scalar_t__) ;
 int nfsm_chain_skip_tag (int,struct nfsm_chain*) ;
 int nfsmout_if (int) ;
 int vfs_context_ucred (int ) ;

int
nfs4_lookup_rpc_async_finish(
 nfsnode_t dnp,
 char *name,
 int namelen,
 vfs_context_t ctx,
 struct nfsreq *req,
 u_int64_t *xidp,
 fhandle_t *fhp,
 struct nfs_vattr *nvap)
{
 int error = 0, lockerror = ENOENT, status, nfsvers, numops, isdotdot = 0;
 uint32_t op = NFS_OP_LOOKUP;
 u_int64_t xid;
 struct nfsmount *nmp;
 struct nfsm_chain nmrep;

 nmp = NFSTONMP(dnp);
 if (nmp == ((void*)0))
  return (ENXIO);
 nfsvers = nmp->nm_vers;
 if ((name[0] == '.') && (name[1] == '.') && (namelen == 2))
  isdotdot = 1;

 nfsm_chain_null(&nmrep);

 error = nfs_request_async_finish(req, &nmrep, &xid, &status);

 if ((lockerror = nfs_node_lock(dnp)))
  error = lockerror;
 nfsm_chain_skip_tag(error, &nmrep);
 nfsm_chain_get_32(error, &nmrep, numops);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_PUTFH);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_GETATTR);
 if (xidp)
  *xidp = xid;
 nfsm_chain_loadattr(error, &nmrep, dnp, nfsvers, &xid);

 nfsm_chain_op_check(error, &nmrep, (isdotdot ? NFS_OP_LOOKUPP : NFS_OP_LOOKUP));
 nfsmout_if(error || !fhp || !nvap);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_GETFH);
 nfsm_chain_get_32(error, &nmrep, fhp->fh_len);
 if (error == 0 && fhp->fh_len > sizeof(fhp->fh_data))
  error = EBADRPC;
 nfsmout_if(error);
 nfsm_chain_get_opaque(error, &nmrep, fhp->fh_len, fhp->fh_data);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_GETATTR);
 if ((error == NFSERR_MOVED) || (error == NFSERR_INVAL)) {

  nfs4_default_attrs_for_referral_trigger(dnp, name, namelen, nvap, fhp);
  error = 0;
 } else {
  nfsmout_if(error);
  error = nfs4_parsefattr(&nmrep, ((void*)0), nvap, ((void*)0), ((void*)0), ((void*)0));
 }
nfsmout:
 if (!lockerror)
  nfs_node_unlock(dnp);
 nfsm_chain_cleanup(&nmrep);
 if (!error && (op == NFS_OP_LOOKUP) && (nmp->nm_state & NFSSTA_NEEDSECINFO)) {


  struct nfs_sec sec;

  sec.count = NX_MAX_SEC_FLAVORS;
  error = nfs4_secinfo_rpc(nmp, &req->r_secinfo, vfs_context_ucred(ctx), sec.flavors, &sec.count);

  if (error == NFSERR_OP_ILLEGAL)
   error = 0;
  if (!error) {

   lck_mtx_lock(&nmp->nm_lock);
   if (sec.count)
    nmp->nm_auth = sec.flavors[0];
   nmp->nm_state &= ~NFSSTA_NEEDSECINFO;
   lck_mtx_unlock(&nmp->nm_lock);
  }
 }
 return (error);
}
