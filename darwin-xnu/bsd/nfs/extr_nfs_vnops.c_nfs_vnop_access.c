
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int uid_t ;
typedef int u_int32_t ;
struct vnop_access_args {int a_action; int a_vp; int a_context; } ;
struct timeval {scalar_t__ tv_sec; } ;
struct nfsmount {int nm_vers; TYPE_1__* nm_funcs; int nm_auth; } ;
typedef TYPE_2__* nfsnode_t ;
struct TYPE_10__ {scalar_t__* n_accessstamp; int* n_access; int n_auth; } ;
struct TYPE_9__ {int (* nf_access_rpc ) (TYPE_2__*,int*,int,int ) ;} ;


 int EACCES ;
 int ENXIO ;
 int EROFS ;
 int ETIMEDOUT ;
 int KAUTH_VNODE_ADD_FILE ;
 int KAUTH_VNODE_ADD_SUBDIRECTORY ;
 int KAUTH_VNODE_APPEND_DATA ;
 int KAUTH_VNODE_CHANGE_OWNER ;
 int KAUTH_VNODE_DELETE ;
 int KAUTH_VNODE_DELETE_CHILD ;
 int KAUTH_VNODE_EXECUTE ;
 int KAUTH_VNODE_LIST_DIRECTORY ;
 int KAUTH_VNODE_READ_DATA ;
 int KAUTH_VNODE_READ_EXTATTRIBUTES ;
 int KAUTH_VNODE_SEARCH ;
 int KAUTH_VNODE_WRITE_ATTRIBUTES ;
 int KAUTH_VNODE_WRITE_DATA ;
 int KAUTH_VNODE_WRITE_EXTATTRIBUTES ;
 int KAUTH_VNODE_WRITE_RIGHTS ;
 int KAUTH_VNODE_WRITE_SECURITY ;
 scalar_t__ NACCESSVALID (TYPE_2__*,int) ;
 int NFS_ACCESS_DELETE ;
 int NFS_ACCESS_EXECUTE ;
 int NFS_ACCESS_EXTEND ;
 int NFS_ACCESS_LOOKUP ;
 int NFS_ACCESS_MODIFY ;
 int NFS_ACCESS_READ ;
 int NFS_VER2 ;
 int R_SOFT ;
 TYPE_2__* VTONFS (int ) ;
 struct nfsmount* VTONMP (int ) ;
 scalar_t__ auth_is_kerberized (int ) ;
 int kauth_cred_getuid (int ) ;
 int microuptime (struct timeval*) ;
 scalar_t__ nfs_access_cache_timeout ;
 int nfs_cred_getasid2uid (int ) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_node_access_slot (TYPE_2__*,int ,int ) ;
 int nfs_node_lock (TYPE_2__*) ;
 int nfs_node_unlock (TYPE_2__*) ;
 scalar_t__ nfs_use_cache (struct nfsmount*) ;
 int stub1 (TYPE_2__*,int*,int,int ) ;
 int vfs_context_ucred (int ) ;
 scalar_t__ vfs_isrdonly (int ) ;
 scalar_t__ vnode_isdir (int ) ;
 int vnode_mount (int ) ;

int
nfs_vnop_access(
 struct vnop_access_args *ap)





{
 vfs_context_t ctx = ap->a_context;
 vnode_t vp = ap->a_vp;
 int error = 0, slot, dorpc, rpcflags = 0;
 u_int32_t access, waccess;
 nfsnode_t np = VTONFS(vp);
 struct nfsmount *nmp;
 int nfsvers;
 struct timeval now;
 uid_t uid;

 nmp = VTONMP(vp);
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 nfsvers = nmp->nm_vers;

 if (nfsvers == NFS_VER2) {
  if ((ap->a_action & KAUTH_VNODE_WRITE_RIGHTS) &&
      vfs_isrdonly(vnode_mount(vp)))
   return (EROFS);
  return (0);
 }
 access = 0;
 if (vnode_isdir(vp)) {

  if (ap->a_action &
      (KAUTH_VNODE_LIST_DIRECTORY |
      KAUTH_VNODE_READ_EXTATTRIBUTES))
   access |= NFS_ACCESS_READ;
  if (ap->a_action & KAUTH_VNODE_SEARCH)
   access |= NFS_ACCESS_LOOKUP;
  if (ap->a_action &
      (KAUTH_VNODE_ADD_FILE |
      KAUTH_VNODE_ADD_SUBDIRECTORY))
   access |= NFS_ACCESS_MODIFY | NFS_ACCESS_EXTEND;
  if (ap->a_action & KAUTH_VNODE_DELETE_CHILD)
   access |= NFS_ACCESS_MODIFY;
 } else {

  if (ap->a_action &
      (KAUTH_VNODE_READ_DATA |
      KAUTH_VNODE_READ_EXTATTRIBUTES))
   access |= NFS_ACCESS_READ;
  if (ap->a_action & KAUTH_VNODE_WRITE_DATA)
   access |= NFS_ACCESS_MODIFY | NFS_ACCESS_EXTEND;
  if (ap->a_action & KAUTH_VNODE_APPEND_DATA)
   access |= NFS_ACCESS_EXTEND;
  if (ap->a_action & KAUTH_VNODE_EXECUTE)
   access |= NFS_ACCESS_EXECUTE;
 }

 if (ap->a_action & KAUTH_VNODE_DELETE)
  access |= NFS_ACCESS_DELETE;
 if (ap->a_action &
     (KAUTH_VNODE_WRITE_ATTRIBUTES |
     KAUTH_VNODE_WRITE_EXTATTRIBUTES |
     KAUTH_VNODE_WRITE_SECURITY))
  access |= NFS_ACCESS_MODIFY;

 if (ap->a_action & KAUTH_VNODE_CHANGE_OWNER)
  access |= NFS_ACCESS_MODIFY;


 if (nfs_access_cache_timeout > 0) {
  waccess = NFS_ACCESS_READ | NFS_ACCESS_MODIFY |
   NFS_ACCESS_EXTEND | NFS_ACCESS_EXECUTE |
   NFS_ACCESS_DELETE | NFS_ACCESS_LOOKUP;
 } else {
  waccess = access;
 }

 if ((error = nfs_node_lock(np)))
  return (error);





 if (auth_is_kerberized(np->n_auth) || auth_is_kerberized(nmp->nm_auth))
  uid = nfs_cred_getasid2uid(vfs_context_ucred(ctx));
 else
  uid = kauth_cred_getuid(vfs_context_ucred(ctx));
 slot = nfs_node_access_slot(np, uid, 0);
 dorpc = 1;
 if (access == 0) {


  dorpc = 0;
  waccess = 0;
 } else if (NACCESSVALID(np, slot)) {
  microuptime(&now);
  if (((now.tv_sec < (np->n_accessstamp[slot] + nfs_access_cache_timeout)) &&
      ((np->n_access[slot] & access) == access)) || nfs_use_cache(nmp)) {

   dorpc = 0;
   waccess = np->n_access[slot];
  }
 }
 nfs_node_unlock(np);
 if (dorpc) {







  if (NACCESSVALID(np, slot))
   rpcflags |= R_SOFT;

  error = nmp->nm_funcs->nf_access_rpc(np, &waccess, rpcflags, ctx);




  if ((error == ETIMEDOUT) && (rpcflags & R_SOFT)) {
   error = 0;
   waccess = np->n_access[slot];
  }
 }
 if (!error && ((waccess & access) != access))
  error = EACCES;

 return (error);
}
