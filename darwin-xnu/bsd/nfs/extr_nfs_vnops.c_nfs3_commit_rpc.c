
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_int64_t ;
struct timespec {int member_1; int member_0; } ;
struct nfsmount {int nm_state; int nm_vers; scalar_t__ nm_verf; int nm_lock; } ;
struct nfsm_chain {int dummy; } ;
typedef TYPE_1__* nfsnode_t ;
typedef int kauth_cred_t ;
struct TYPE_9__ {int n_fhsize; int n_fhp; } ;


 int ENXIO ;
 int FSDBG (int,TYPE_1__*,scalar_t__,scalar_t__,int) ;
 int NFSERR_STALEWRITEVERF ;
 int NFSPROC_COMMIT ;
 int NFSSTA_HASWRITEVERF ;
 struct nfsmount* NFSTONMP (TYPE_1__*) ;
 int NFSX_FH (int ) ;
 int NFS_VER3 ;
 scalar_t__ UINT32_MAX ;
 int current_thread () ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_node_lock (TYPE_1__*) ;
 int nfs_node_unlock (TYPE_1__*) ;
 int nfs_request2 (TYPE_1__*,int *,struct nfsm_chain*,int ,int ,int ,int *,int ,struct nfsm_chain*,scalar_t__*,int*) ;
 int nfsm_chain_add_32 (int,struct nfsm_chain*,scalar_t__) ;
 int nfsm_chain_add_64 (int,struct nfsm_chain*,scalar_t__) ;
 int nfsm_chain_add_fh (int,struct nfsm_chain*,int,int ,int ) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_get_64 (int,struct nfsm_chain*,scalar_t__) ;
 int nfsm_chain_get_wcc_data (int,struct nfsm_chain*,TYPE_1__*,struct timespec*,int*,scalar_t__*) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 int nfsmout_if (int) ;

int
nfs3_commit_rpc(
 nfsnode_t np,
 uint64_t offset,
 uint64_t count,
 kauth_cred_t cred,
 uint64_t wverf)
{
 struct nfsmount *nmp;
 int error = 0, lockerror, status, wccpostattr = 0, nfsvers;
 struct timespec premtime = { 0, 0 };
 u_int64_t xid, newwverf;
 uint32_t count32;
 struct nfsm_chain nmreq, nmrep;

 nmp = NFSTONMP(np);
 FSDBG(521, np, offset, count, nmp ? nmp->nm_state : 0);
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 if (!(nmp->nm_state & NFSSTA_HASWRITEVERF))
  return (0);
 nfsvers = nmp->nm_vers;

 if (count > UINT32_MAX)
  count32 = 0;
 else
  count32 = count;

 nfsm_chain_null(&nmreq);
 nfsm_chain_null(&nmrep);

 nfsm_chain_build_alloc_init(error, &nmreq, NFSX_FH(NFS_VER3));
 nfsm_chain_add_fh(error, &nmreq, nfsvers, np->n_fhp, np->n_fhsize);
 nfsm_chain_add_64(error, &nmreq, offset);
 nfsm_chain_add_32(error, &nmreq, count32);
 nfsm_chain_build_done(error, &nmreq);
 nfsmout_if(error);
 error = nfs_request2(np, ((void*)0), &nmreq, NFSPROC_COMMIT,
   current_thread(), cred, ((void*)0), 0, &nmrep, &xid, &status);
 if ((lockerror = nfs_node_lock(np)))
  error = lockerror;

 nfsm_chain_get_wcc_data(error, &nmrep, np, &premtime, &wccpostattr, &xid);
 if (!lockerror)
  nfs_node_unlock(np);
 if (!error)
  error = status;
 nfsm_chain_get_64(error, &nmrep, newwverf);
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
