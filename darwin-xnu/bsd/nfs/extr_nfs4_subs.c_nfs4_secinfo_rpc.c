
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int * vnode_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_char ;
struct nfsreq_secinfo_args {int rsia_fhsize; char* rsia_name; int rsia_namelen; int * rsia_fh; TYPE_2__* rsia_np; } ;
struct nfsmount {int nm_vers; int nm_mountp; int nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_sillyrename {char* nsr_name; int nsr_namlen; TYPE_2__* nsr_dnp; } ;
typedef TYPE_2__* nfsnode_t ;
typedef int kauth_cred_t ;
struct TYPE_8__ {int nva_flags; } ;
struct TYPE_9__ {int n_fhsize; int * n_fhp; int * n_parent; TYPE_1__ n_vattr; struct nfs_sillyrename* n_sillyrename; } ;


 int EIO ;
 int ENXIO ;
 int EPROTO ;
 int MAXPATHLEN ;
 int NFSPROC4_COMPOUND ;
 int * NFSTOV (TYPE_2__*) ;
 scalar_t__ NFSX_FH (int) ;
 int NFSX_UNSIGNED ;
 int NFS_FFLAG_IS_ATTR ;
 int NFS_OP_PUTFH ;
 int NFS_OP_PUTROOTFH ;
 int NFS_OP_SECINFO ;
 int * NULLVP ;
 scalar_t__ VDIR ;
 TYPE_2__* VTONFS (int *) ;
 int current_thread () ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_node_lock_force (TYPE_2__*) ;
 int nfs_node_unlock (TYPE_2__*) ;
 int nfs_request2 (TYPE_2__*,int ,struct nfsm_chain*,int ,int ,int ,int *,int ,struct nfsm_chain*,int *,int*) ;
 int nfsm_assert (int,int,int ) ;
 int nfsm_chain_add_32 (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_add_compound_header (int,struct nfsm_chain*,char*,int ,int) ;
 int nfsm_chain_add_fh (int,struct nfsm_chain*,int,int *,int) ;
 int nfsm_chain_add_name (int,struct nfsm_chain*,char const*,int,struct nfsmount*) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,scalar_t__) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_get_32 (int,struct nfsm_chain*,int) ;
 int nfsm_chain_get_secinfo (struct nfsm_chain*,int *,int*) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 int nfsm_chain_op_check (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_skip_tag (int,struct nfsm_chain*) ;
 scalar_t__ nfsm_rndup (int) ;
 int nfsmout_if (int) ;
 int strlen (char const*) ;
 int strnlen (char const*,int ) ;
 int vnode_get (int *) ;
 char* vnode_getname (int *) ;
 int * vnode_getparent (int *) ;
 int vnode_put (int *) ;
 int vnode_putname (char const*) ;
 scalar_t__ vnode_vtype (int *) ;

int
nfs4_secinfo_rpc(struct nfsmount *nmp, struct nfsreq_secinfo_args *siap, kauth_cred_t cred, uint32_t *sec, int *seccountp)
{
 int error = 0, status, nfsvers, numops, namelen, fhsize;
 vnode_t dvp = NULLVP;
 nfsnode_t np, dnp;
 u_char *fhp;
 const char *vname = ((void*)0), *name;
 uint64_t xid;
 struct nfsm_chain nmreq, nmrep;

 *seccountp = 0;
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 nfsvers = nmp->nm_vers;
 np = siap->rsia_np;

 nfsm_chain_null(&nmreq);
 nfsm_chain_null(&nmrep);

 fhp = siap->rsia_fh;
 fhsize = fhp ? siap->rsia_fhsize : 0;
 name = siap->rsia_name;
 namelen = name ? siap->rsia_namelen : 0;
 if (name && !namelen)
  namelen = strlen(name);
 if (!fhp && name) {
  if (!np)
   goto gotargs;
  fhp = np->n_fhp;
  fhsize = np->n_fhsize;
 }
 if (fhp && name)
  goto gotargs;

 if (!np)
  return (EIO);
 nfs_node_lock_force(np);
 if ((vnode_vtype(NFSTOV(np)) != VDIR) && np->n_sillyrename) {




  struct nfs_sillyrename *nsp = np->n_sillyrename;
  dnp = nsp->nsr_dnp;
  dvp = NFSTOV(dnp);
  if ((error = vnode_get(dvp))) {
   nfs_node_unlock(np);
   goto nfsmout;
  }
  fhp = dnp->n_fhp;
  fhsize = dnp->n_fhsize;
  name = nsp->nsr_name;
  namelen = nsp->nsr_namlen;
 } else {






  if ((np->n_vattr.nva_flags & NFS_FFLAG_IS_ATTR) &&
      (((dvp = np->n_parent)) && (error = vnode_get(dvp))))
   dvp = ((void*)0);
  if (!dvp)
   dvp = vnode_getparent(NFSTOV(np));
  vname = vnode_getname(NFSTOV(np));
  if (!dvp || !vname) {
   if (!error)
    error = EIO;
   nfs_node_unlock(np);
   goto nfsmout;
  }
  dnp = VTONFS(dvp);
  fhp = dnp->n_fhp;
  fhsize = dnp->n_fhsize;
  name = vname;
  namelen = strnlen(vname, MAXPATHLEN);
 }
 nfs_node_unlock(np);

gotargs:

 numops = 2;
 nfsm_chain_build_alloc_init(error, &nmreq,
  4 * NFSX_UNSIGNED + NFSX_FH(nfsvers) + nfsm_rndup(namelen));
 nfsm_chain_add_compound_header(error, &nmreq, "secinfo", nmp->nm_minor_vers, numops);
 numops--;
 if (fhp) {
  nfsm_chain_add_32(error, &nmreq, NFS_OP_PUTFH);
  nfsm_chain_add_fh(error, &nmreq, nfsvers, fhp, fhsize);
 } else {
  nfsm_chain_add_32(error, &nmreq, NFS_OP_PUTROOTFH);
 }
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_SECINFO);
 nfsm_chain_add_name(error, &nmreq, name, namelen, nmp);
 nfsm_chain_build_done(error, &nmreq);
 nfsm_assert(error, (numops == 0), EPROTO);
 nfsmout_if(error);
 error = nfs_request2(np, nmp->nm_mountp, &nmreq, NFSPROC4_COMPOUND,
   current_thread(), cred, ((void*)0), 0, &nmrep, &xid, &status);
 nfsm_chain_skip_tag(error, &nmrep);
 nfsm_chain_get_32(error, &nmrep, numops);
 nfsm_chain_op_check(error, &nmrep, fhp ? NFS_OP_PUTFH : NFS_OP_PUTROOTFH);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_SECINFO);
 nfsmout_if(error);
 error = nfsm_chain_get_secinfo(&nmrep, sec, seccountp);
nfsmout:
 nfsm_chain_cleanup(&nmreq);
 nfsm_chain_cleanup(&nmrep);
 if (vname)
  vnode_putname(vname);
 if (dvp != NULLVP)
  vnode_put(dvp);
 return (error);
}
