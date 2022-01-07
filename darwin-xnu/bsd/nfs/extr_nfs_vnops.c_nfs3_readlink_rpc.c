
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef scalar_t__ uint32_t ;
typedef int u_int64_t ;
struct nfsmount {int nm_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef TYPE_1__* nfsnode_t ;
struct TYPE_8__ {scalar_t__ n_size; int n_fhsize; int n_fhp; } ;


 int EBADRPC ;
 int ENOENT ;
 int ENXIO ;
 int NFSPROC_READLINK ;
 struct nfsmount* NFSTONMP (TYPE_1__*) ;
 int NFSX_FH (int) ;
 int NFS_VER2 ;
 int NFS_VER3 ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_node_lock (TYPE_1__*) ;
 int nfs_node_unlock (TYPE_1__*) ;
 int nfs_request (TYPE_1__*,int *,struct nfsm_chain*,int ,int ,int *,struct nfsm_chain*,int *,int*) ;
 int nfsm_chain_add_fh (int,struct nfsm_chain*,int,int ,int ) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_get_32 (int,struct nfsm_chain*,scalar_t__) ;
 int nfsm_chain_get_opaque (int,struct nfsm_chain*,scalar_t__,char*) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 int nfsm_chain_postop_attr_update (int,struct nfsm_chain*,TYPE_1__*,int *) ;
 int nfsmout_if (int) ;

int
nfs3_readlink_rpc(nfsnode_t np, char *buf, uint32_t *buflenp, vfs_context_t ctx)
{
 struct nfsmount *nmp;
 int error = 0, lockerror = ENOENT, nfsvers, status;
 uint32_t len;
 u_int64_t xid;
 struct nfsm_chain nmreq, nmrep;

 nmp = NFSTONMP(np);
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 nfsvers = nmp->nm_vers;
 nfsm_chain_null(&nmreq);
 nfsm_chain_null(&nmrep);

 nfsm_chain_build_alloc_init(error, &nmreq, NFSX_FH(nfsvers));
 nfsm_chain_add_fh(error, &nmreq, nfsvers, np->n_fhp, np->n_fhsize);
 nfsm_chain_build_done(error, &nmreq);
 nfsmout_if(error);
 error = nfs_request(np, ((void*)0), &nmreq, NFSPROC_READLINK, ctx, ((void*)0), &nmrep, &xid, &status);
 if ((lockerror = nfs_node_lock(np)))
  error = lockerror;
 if (nfsvers == NFS_VER3)
  nfsm_chain_postop_attr_update(error, &nmrep, np, &xid);
 if (!error)
  error = status;
 nfsm_chain_get_32(error, &nmrep, len);
 nfsmout_if(error);
 if ((nfsvers == NFS_VER2) && (len > *buflenp)) {
  error = EBADRPC;
  goto nfsmout;
 }
 if (len >= *buflenp) {
  if (np->n_size && (np->n_size < *buflenp))
   len = np->n_size;
  else
   len = *buflenp - 1;
 }
 nfsm_chain_get_opaque(error, &nmrep, len, buf);
 if (!error)
  *buflenp = len;
nfsmout:
 if (!lockerror)
  nfs_node_unlock(np);
 nfsm_chain_cleanup(&nmreq);
 nfsm_chain_cleanup(&nmrep);
 return (error);
}
