
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef scalar_t__ vnode_t ;
typedef int vfs_context_t ;
typedef int u_int64_t ;
struct vnop_lookup_args {scalar_t__* a_vpp; scalar_t__ a_dvp; struct componentname* a_cnp; int a_context; } ;
struct vnop_access_args {int a_context; int a_action; scalar_t__ a_vp; int * a_desc; } ;
struct nfsreq {int r_auth; } ;
struct TYPE_24__ {scalar_t__ nfsa_maxname; int nfsa_bitmap; } ;
struct nfsmount {int nm_vers; TYPE_3__* nm_funcs; TYPE_2__ nm_fsattr; } ;
struct nfs_vattr {int dummy; } ;
struct componentname {int cn_flags; char* cn_nameptr; int cn_namelen; int cn_nameiop; } ;
typedef TYPE_4__* nfsnode_t ;
typedef scalar_t__ mount_t ;
struct TYPE_27__ {scalar_t__ fh_len; int fh_data; } ;
typedef TYPE_5__ fhandle_t ;
struct TYPE_28__ {int lookupcache_misses; int lookupcache_hits; } ;
struct TYPE_23__ {int nva_flags; } ;
struct TYPE_26__ {int n_flag; int n_xid; TYPE_1__ n_vattr; } ;
struct TYPE_25__ {int (* nf_lookup_rpc_async ) (TYPE_4__*,char*,int,int ,struct nfsreq**) ;int (* nf_lookup_rpc_async_finish ) (TYPE_4__*,char*,int,int ,struct nfsreq*,int *,TYPE_5__*,struct nfs_vattr*) ;} ;


 int CREATE ;

 int EISDIR ;
 int EJUSTRETURN ;
 int ENAMETOOLONG ;

 int ENXIO ;
 int EROFS ;
 int ISLASTCN ;
 int KAUTH_VNODE_SEARCH ;
 int MAKEENTRY ;
 scalar_t__ NFSTOV (TYPE_4__*) ;
 scalar_t__ NFS_BITMAP_ISSET (int ,int ) ;
 int NFS_CMPFH (TYPE_4__*,int ,scalar_t__) ;
 int NFS_FATTR_MAXNAME ;
 int NFS_FFLAG_TRIGGER ;
 int NFS_VER2 ;
 int NFS_VER4 ;
 int NGA_CACHED ;
 int NG_MAKEENTRY ;
 scalar_t__ NMFLAG (struct nfsmount*,int ) ;
 int NNEGNCENTRIES ;
 int NONEGNAMECACHE ;
 scalar_t__ NULLVP ;
 int NVATTR_CLEANUP (struct nfs_vattr*) ;
 int NVATTR_INIT (struct nfs_vattr*) ;
 int OSAddAtomic64 (int,int *) ;
 int RDIRPLUS ;

 struct nfsmount* VFSTONFS (scalar_t__) ;
 TYPE_4__* VTONFS (scalar_t__) ;
 struct nfsmount* VTONMP (scalar_t__) ;
 int cache_enter (scalar_t__,int *,struct componentname*) ;
 int cache_lookup (scalar_t__,scalar_t__*,struct componentname*) ;
 int nfs_dir_buf_cache_lookup (TYPE_4__*,TYPE_4__**,struct componentname*,int ,int ) ;
 int nfs_getattr (TYPE_4__*,int *,int ,int ) ;
 int nfs_loadattrcache (TYPE_4__*,struct nfs_vattr*,int *,int ) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_nget (scalar_t__,TYPE_4__*,struct componentname*,int ,scalar_t__,struct nfs_vattr*,int *,int ,int,TYPE_4__**) ;
 int nfs_node_clear_busy (TYPE_4__*) ;
 int nfs_node_lock_force (TYPE_4__*) ;
 int nfs_node_set_busy (TYPE_4__*,int ) ;
 int nfs_node_unlock (TYPE_4__*) ;
 int nfs_vnop_access (struct vnop_access_args*) ;
 int nfsmout_if (int) ;
 TYPE_9__ nfsstats ;
 int stub1 (TYPE_4__*,char*,int,int ,struct nfsreq**) ;
 int stub2 (TYPE_4__*,char*,int,int ,struct nfsreq*,int *,TYPE_5__*,struct nfs_vattr*) ;
 int vfs_context_thread (int ) ;
 int vnode_get (scalar_t__) ;
 scalar_t__ vnode_getparent (scalar_t__) ;
 scalar_t__ vnode_mount (scalar_t__) ;
 int vnode_put (scalar_t__) ;
 scalar_t__ vnode_vfsisrdonly (scalar_t__) ;
 int vnop_access_desc ;

int
nfs_vnop_lookup(
 struct vnop_lookup_args *ap)






{
 vfs_context_t ctx = ap->a_context;
 struct componentname *cnp = ap->a_cnp;
 vnode_t dvp = ap->a_dvp;
 vnode_t *vpp = ap->a_vpp;
 int flags = cnp->cn_flags;
 vnode_t newvp;
 nfsnode_t dnp, np;
 struct nfsmount *nmp;
 mount_t mp;
 int nfsvers, error, busyerror = 129, isdot, isdotdot, negnamecache;
 u_int64_t xid;
 struct nfs_vattr nvattr;
 int ngflags;
 struct vnop_access_args naa;
 fhandle_t fh;
 struct nfsreq rq, *req = &rq;

 *vpp = NULLVP;

 dnp = VTONFS(dvp);
 NVATTR_INIT(&nvattr);

 mp = vnode_mount(dvp);
 nmp = VFSTONFS(mp);
 if (nfs_mount_gone(nmp)) {
  error = ENXIO;
  goto error_return;
 }
 nfsvers = nmp->nm_vers;
 negnamecache = !NMFLAG(nmp, NONEGNAMECACHE);

 if ((error = busyerror = nfs_node_set_busy(dnp, vfs_context_thread(ctx))))
  goto error_return;

 if ((error = nfs_getattr(dnp, ((void*)0), ctx, NGA_CACHED)))
  goto error_return;

 error = cache_lookup(dvp, vpp, cnp);
 switch (error) {
 case 129:

  goto error_return;
 case 0:

  if ((nfsvers > NFS_VER2) && NMFLAG(nmp, RDIRPLUS)) {

   error = nfs_dir_buf_cache_lookup(dnp, &np, cnp, ctx, 0);
   if (!error && np) {

    *vpp = NFSTOV(np);
    error = -1;
   }
  }
  if (error != -1)
   break;

 case -1:

  OSAddAtomic64(1, &nfsstats.lookupcache_hits);

  nfs_node_clear_busy(dnp);
  busyerror = 129;


  naa.a_desc = &vnop_access_desc;
  naa.a_vp = dvp;
  naa.a_action = KAUTH_VNODE_SEARCH;
  naa.a_context = ctx;


  error = nfs_vnop_access(&naa);

 default:

  goto error_return;
 }


 isdot = isdotdot = 0;
 if (cnp->cn_nameptr[0] == '.') {
  if (cnp->cn_namelen == 1)
   isdot = 1;
  if ((cnp->cn_namelen == 2) && (cnp->cn_nameptr[1] == '.'))
   isdotdot = 1;
 }
 if (isdotdot || isdot) {
  fh.fh_len = 0;
  goto found;
 }
 if ((nfsvers >= NFS_VER4) && (dnp->n_vattr.nva_flags & NFS_FFLAG_TRIGGER)) {

  error = 129;
  goto error_return;
 }


 nmp = VTONMP(dvp);
 if (nfs_mount_gone(nmp)) {
  error = ENXIO;
  goto error_return;
 }
 if (NFS_BITMAP_ISSET(nmp->nm_fsattr.nfsa_bitmap, NFS_FATTR_MAXNAME) &&
      (cnp->cn_namelen > (int)nmp->nm_fsattr.nfsa_maxname)) {
  error = ENAMETOOLONG;
  goto error_return;
 }

 error = 0;
 newvp = NULLVP;

 OSAddAtomic64(1, &nfsstats.lookupcache_misses);

 error = nmp->nm_funcs->nf_lookup_rpc_async(dnp, cnp->cn_nameptr, cnp->cn_namelen, ctx, &req);
 nfsmout_if(error);
 error = nmp->nm_funcs->nf_lookup_rpc_async_finish(dnp, cnp->cn_nameptr, cnp->cn_namelen, ctx, req, &xid, &fh, &nvattr);
 nfsmout_if(error);


 isdot = NFS_CMPFH(dnp, fh.fh_data, fh.fh_len);

found:
 if (flags & ISLASTCN) {
  switch (cnp->cn_nameiop) {
  case 130:
   cnp->cn_flags &= ~MAKEENTRY;
   break;
  case 128:
   cnp->cn_flags &= ~MAKEENTRY;
   if (isdot) {
    error = EISDIR;
    goto error_return;
   }
   break;
  }
 }

 if (isdotdot) {
  newvp = vnode_getparent(dvp);
  if (!newvp) {
   error = 129;
   goto error_return;
  }
 } else if (isdot) {
  error = vnode_get(dvp);
  if (error)
   goto error_return;
  newvp = dvp;
  nfs_node_lock_force(dnp);
  if (fh.fh_len && (dnp->n_xid <= xid))
   nfs_loadattrcache(dnp, &nvattr, &xid, 0);
  nfs_node_unlock(dnp);
 } else {
  ngflags = (cnp->cn_flags & MAKEENTRY) ? NG_MAKEENTRY : 0;
  error = nfs_nget(mp, dnp, cnp, fh.fh_data, fh.fh_len, &nvattr, &xid, rq.r_auth, ngflags, &np);
  if (error)
   goto error_return;
  newvp = NFSTOV(np);
  nfs_node_unlock(np);
 }
 *vpp = newvp;

nfsmout:
 if (error) {
  if (((cnp->cn_nameiop == CREATE) || (cnp->cn_nameiop == 128)) &&
      (flags & ISLASTCN) && (error == 129)) {
   if (vnode_mount(dvp) && vnode_vfsisrdonly(dvp))
    error = EROFS;
   else
    error = EJUSTRETURN;
  }
 }
 if ((error == 129) && (cnp->cn_flags & MAKEENTRY) &&
     (cnp->cn_nameiop != CREATE) && negnamecache) {

  nfs_node_lock_force(dnp);
  cache_enter(dvp, ((void*)0), cnp);
  dnp->n_flag |= NNEGNCENTRIES;
  nfs_node_unlock(dnp);
 }
error_return:
 NVATTR_CLEANUP(&nvattr);
 if (!busyerror)
  nfs_node_clear_busy(dnp);
 if (error && *vpp) {
         vnode_put(*vpp);
  *vpp = NULLVP;
 }
 return (error);
}
