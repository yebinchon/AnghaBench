
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
typedef int user_addr_t ;
struct vnode_attr {int dummy; } ;
struct componentname {int cn_flags; int cn_nameptr; } ;
struct nameidata {int ni_flag; TYPE_1__* ni_vp; struct componentname ni_cnd; TYPE_1__* ni_dvp; } ;
struct TYPE_26__ {int mode; } ;
typedef TYPE_2__ fse_info ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_25__ {int v_flag; scalar_t__ v_parent; } ;


 int AUDITVNPATH1 ;
 int CN_ALLOWRSRCFORK ;
 int CN_WANTSRSRCFORK ;
 int DELETE ;
 int EBUSY ;
 int EISDIR ;
 int EKEEPLOOKING ;
 int ENOENT ;
 int ENOMEM ;
 int EPERM ;
 int FSE_ARG_DONE ;
 int FSE_ARG_FINFO ;
 int FSE_ARG_STRING ;
 int FSE_DELETE ;
 int FSE_TRUNCATED_PATH ;
 int GET_PATH (char*) ;
 int KAUTH_FILEOP_DELETE ;
 int LOCKPARENT ;
 int MAXPATHLEN ;
 int MAX_AUTHORIZE_ENOENT_RETRIES ;
 int NAMEI_COMPOUNDREMOVE ;
 int NAMEI_CONTLOOKUP ;
 int NDINIT (struct nameidata*,int ,int ,int,int,int ,int ) ;
 scalar_t__ NULLVP ;
 int OP_UNLINK ;
 int RELEASE_PATH (char*) ;
 int USEDVP ;
 int VISHARDLINK ;
 int VNODE_REMOVE_NODELETEBUSY ;
 int VNODE_REMOVE_NO_AUDIT_PATH ;
 int VNODE_REMOVE_SKIP_NAMESPACE_EVENT ;
 int VNODE_UPDATE_PARENT ;
 int VROOT ;
 int XATTR_RESOURCEFORK_NAME ;
 int add_fsevent (int ,int ,int ,int,char*,int ,TYPE_2__*,int ) ;
 int assert (int) ;
 int get_fse_info (TYPE_1__*,TYPE_2__*,int ) ;
 int kauth_authorize_fileop (int ,int ,uintptr_t,uintptr_t) ;
 int kauth_authorize_fileop_has_listeners () ;
 int nameiat (struct nameidata*,int) ;
 int nameidone (struct nameidata*) ;
 int need_fsevent (int ,TYPE_1__*) ;
 int panic (char*) ;
 int safe_getpath (TYPE_1__*,int ,char*,int ,int*) ;
 int vfs_context_kernel () ;
 int vfs_context_ucred (int ) ;
 int vfs_get_notify_attributes (struct vnode_attr*) ;
 int vn_authorize_unlink (TYPE_1__*,TYPE_1__*,struct componentname*,int ,int *) ;
 int vn_remove (TYPE_1__*,TYPE_1__**,struct nameidata*,int,struct vnode_attr*,int ) ;
 int vnode_compound_remove_available (TYPE_1__*) ;
 int vnode_get_fse_info_from_vap (TYPE_1__*,TYPE_2__*,struct vnode_attr*) ;
 scalar_t__ vnode_isdir (TYPE_1__*) ;
 scalar_t__ vnode_isnamedstream (TYPE_1__*) ;
 scalar_t__ vnode_isshadow (TYPE_1__*) ;
 scalar_t__ vnode_isswap (TYPE_1__*) ;
 int vnode_put (TYPE_1__*) ;
 int vnode_recycle (TYPE_1__*) ;
 int vnode_removenamedstream (TYPE_1__*,TYPE_1__*,int ,int ,int ) ;
 int vnode_update_identity (TYPE_1__*,int *,int *,int ,int ,int ) ;

__attribute__((used)) static int
unlinkat_internal(vfs_context_t ctx, int fd, vnode_t start_dvp,
    user_addr_t path_arg, enum uio_seg segflg, int unlink_flags)
{
 struct nameidata nd;
 vnode_t vp, dvp;
 int error;
 struct componentname *cnp;
 char *path = ((void*)0);
 int len=0;




 int flags;
 int need_event;
 int has_listeners;
 int truncated_path;
 int batched;
 struct vnode_attr *vap;
 int do_retry;
 int retry_count = 0;
 int cn_flags;

 cn_flags = LOCKPARENT;
 if (!(unlink_flags & VNODE_REMOVE_NO_AUDIT_PATH))
  cn_flags |= AUDITVNPATH1;

 if (start_dvp)
  cn_flags |= USEDVP;






retry:
 do_retry = 0;
 flags = 0;
 need_event = 0;
 has_listeners = 0;
 truncated_path = 0;
 vap = ((void*)0);

 NDINIT(&nd, DELETE, OP_UNLINK, cn_flags, segflg, path_arg, ctx);

 nd.ni_dvp = start_dvp;
 nd.ni_flag |= NAMEI_COMPOUNDREMOVE;
 cnp = &nd.ni_cnd;

continue_lookup:
 error = nameiat(&nd, fd);
 if (error)
  return (error);

 dvp = nd.ni_dvp;
 vp = nd.ni_vp;



 if (unlink_flags & VNODE_REMOVE_NODELETEBUSY) {
  flags |= VNODE_REMOVE_NODELETEBUSY;
 }


 if (unlink_flags & VNODE_REMOVE_SKIP_NAMESPACE_EVENT) {
  flags |= VNODE_REMOVE_SKIP_NAMESPACE_EVENT;
 }

 if (vp) {
  batched = vnode_compound_remove_available(vp);



  if (vp->v_flag & VROOT) {
   error = EBUSY;
  }
  if (vnode_isswap(vp) && (ctx != vfs_context_kernel())) {
   error = EPERM;
   goto out;
  }


  if (!batched) {
   error = vn_authorize_unlink(dvp, vp, cnp, ctx, ((void*)0));
   if (error) {
    if (error == ENOENT) {
     assert(retry_count < MAX_AUTHORIZE_ENOENT_RETRIES);
     if (retry_count < MAX_AUTHORIZE_ENOENT_RETRIES) {
      do_retry = 1;
      retry_count++;
     }
    }
    goto out;
   }
  }
 } else {
  batched = 1;

  if (!vnode_compound_remove_available(dvp)) {
   panic("No vp, but no compound remove?");
  }
 }
 has_listeners = kauth_authorize_fileop_has_listeners();
 if (need_event || has_listeners) {
  if (path == ((void*)0)) {
   GET_PATH(path);
   if (path == ((void*)0)) {
    error = ENOMEM;
    goto out;
   }
  }
  len = safe_getpath(dvp, nd.ni_cnd.cn_nameptr, path, MAXPATHLEN, &truncated_path);
 }






 {
  error = vn_remove(dvp, &nd.ni_vp, &nd, flags, vap, ctx);
  vp = nd.ni_vp;
  if (error == EKEEPLOOKING) {
   if (!batched) {
    panic("EKEEPLOOKING, but not a filesystem that supports compound VNOPs?");
   }

   if ((nd.ni_flag & NAMEI_CONTLOOKUP) == 0) {
    panic("EKEEPLOOKING, but continue flag not set?");
   }

   if (vnode_isdir(vp)) {
    error = EISDIR;
    goto out;
   }
   goto continue_lookup;
  } else if (error == ENOENT && batched) {
   assert(retry_count < MAX_AUTHORIZE_ENOENT_RETRIES);
   if (retry_count < MAX_AUTHORIZE_ENOENT_RETRIES) {





    do_retry = 1;
    retry_count += 1;
    goto out;
   }
  }
 }





 if (!error) {
  if (has_listeners) {
   kauth_authorize_fileop(vfs_context_ucred(ctx),
    KAUTH_FILEOP_DELETE,
    (uintptr_t)vp,
    (uintptr_t)path);
  }

  if (vp->v_flag & VISHARDLINK) {







      vnode_update_identity(vp, ((void*)0), ((void*)0), 0, 0, VNODE_UPDATE_PARENT);
  }
 }

out:
 if (path != ((void*)0))
  RELEASE_PATH(path);
 nameidone(&nd);
 vnode_put(dvp);
 if (vp) {
  vnode_put(vp);
 }

 if (do_retry) {
  goto retry;
 }

 return (error);
}
