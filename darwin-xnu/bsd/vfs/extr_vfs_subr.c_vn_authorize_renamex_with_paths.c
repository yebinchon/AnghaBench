
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_rename_flags_t ;
typedef int vfs_context_t ;
struct vnode {scalar_t__ v_type; struct vnode* v_parent; } ;
struct componentname {int cn_namelen; char* cn_nameptr; int cn_flags; int cn_ndp; } ;
typedef int kauth_action_t ;


 int EINVAL ;
 int EISDIR ;
 int ENOTDIR ;
 int ISDOTDOT ;
 int KAUTH_FILEOP_WILL_RENAME ;
 int KAUTH_VNODE_ADD_FILE ;
 int KAUTH_VNODE_ADD_SUBDIRECTORY ;
 int KAUTH_VNODE_DELETE ;
 struct vnode* NULLVP ;
 scalar_t__ VDIR ;
 int VFS_RENAME_SWAP ;
 int kauth_authorize_fileop (int ,int ,uintptr_t,uintptr_t) ;
 int lookup_validate_creation_path (int ) ;
 int mac_vnode_check_rename (int ,struct vnode*,struct vnode*,struct componentname*,struct vnode*,struct vnode*,struct componentname*) ;
 int panic (char*) ;
 int vfs_context_ucred (int ) ;
 int vnode_authorize (struct vnode*,struct vnode*,int,int ) ;
 scalar_t__ vnode_compound_rename_available (struct vnode*) ;
 scalar_t__ vnode_isdir (struct vnode*) ;

int
vn_authorize_renamex_with_paths(struct vnode *fdvp, struct vnode *fvp, struct componentname *fcnp, const char *from_path,
      struct vnode *tdvp, struct vnode *tvp, struct componentname *tcnp, const char *to_path,
      vfs_context_t ctx, vfs_rename_flags_t flags, void *reserved)
{
 int error = 0;
 int moving = 0;
 bool swap = flags & VFS_RENAME_SWAP;

 if (reserved != ((void*)0)) {
  panic("Passed something other than NULL as reserved field!");
 }







 if (fvp->v_type == VDIR &&
     ((fdvp == fvp) ||
      (fcnp->cn_namelen == 1 && fcnp->cn_nameptr[0] == '.') ||
      ((fcnp->cn_flags | tcnp->cn_flags) & ISDOTDOT)) ) {
  error = EINVAL;
  goto out;
 }

 if (tvp == NULLVP && vnode_compound_rename_available(tdvp)) {
  error = lookup_validate_creation_path(tcnp->cn_ndp);
  if (error)
   goto out;
 }
 if (tvp != ((void*)0)) {
  if (!swap) {
   if (fvp->v_type == VDIR && tvp->v_type != VDIR) {
    error = ENOTDIR;
    goto out;
   } else if (fvp->v_type != VDIR && tvp->v_type == VDIR) {
    error = EISDIR;
    goto out;
   }
  }
 } else if (swap) {






  error = EINVAL;
  goto out;
 }

 if (fvp == tdvp) {
  error = EINVAL;
  goto out;
 }
 if (tdvp->v_parent == fvp) {
  error = EINVAL;
  goto out;
 }

 if (swap && fdvp->v_parent == tvp) {
  error = EINVAL;
  goto out;
 }
 if (swap) {
  kauth_action_t f = 0, t = 0;





  if (fdvp != tdvp) {
   if (vnode_isdir(fvp))
    f = KAUTH_VNODE_ADD_SUBDIRECTORY;
   if (vnode_isdir(tvp))
    t = KAUTH_VNODE_ADD_SUBDIRECTORY;
  }
  if (to_path != ((void*)0))
   kauth_authorize_fileop(vfs_context_ucred(ctx),
     KAUTH_FILEOP_WILL_RENAME,
     (uintptr_t)fvp,
     (uintptr_t)to_path);
  error = vnode_authorize(fvp, fdvp, KAUTH_VNODE_DELETE | f, ctx);
  if (error)
   goto out;
  if (from_path != ((void*)0))
   kauth_authorize_fileop(vfs_context_ucred(ctx),
     KAUTH_FILEOP_WILL_RENAME,
     (uintptr_t)tvp,
     (uintptr_t)from_path);
  error = vnode_authorize(tvp, tdvp, KAUTH_VNODE_DELETE | t, ctx);
  if (error)
   goto out;
  f = vnode_isdir(fvp) ? KAUTH_VNODE_ADD_SUBDIRECTORY : KAUTH_VNODE_ADD_FILE;
  t = vnode_isdir(tvp) ? KAUTH_VNODE_ADD_SUBDIRECTORY : KAUTH_VNODE_ADD_FILE;
  if (fdvp == tdvp)
   error = vnode_authorize(fdvp, ((void*)0), f | t, ctx);
  else {
   error = vnode_authorize(fdvp, ((void*)0), t, ctx);
   if (error)
    goto out;
   error = vnode_authorize(tdvp, ((void*)0), f, ctx);
  }
  if (error)
   goto out;
 } else {
  error = 0;
  if ((tvp != ((void*)0)) && vnode_isdir(tvp)) {
   if (tvp != fdvp)
    moving = 1;
  } else if (tdvp != fdvp) {
   moving = 1;
  }
  if (to_path != ((void*)0))
   kauth_authorize_fileop(vfs_context_ucred(ctx),
     KAUTH_FILEOP_WILL_RENAME,
     (uintptr_t)fvp,
     (uintptr_t)to_path);
  if (vnode_isdir(fvp)) {
   if ((error = vnode_authorize(fvp, fdvp, KAUTH_VNODE_DELETE | KAUTH_VNODE_ADD_SUBDIRECTORY, ctx)) != 0)
    goto out;
  } else {
   if ((error = vnode_authorize(fvp, fdvp, KAUTH_VNODE_DELETE, ctx)) != 0)
    goto out;
  }
  if (moving) {

   if ((error = vnode_authorize(((tvp != ((void*)0)) && vnode_isdir(tvp)) ? tvp : tdvp,
       ((void*)0),
       vnode_isdir(fvp) ? KAUTH_VNODE_ADD_SUBDIRECTORY : KAUTH_VNODE_ADD_FILE,
       ctx)) != 0) {
    goto out;
   }
  } else {

   if ((error = vnode_authorize(fdvp, ((void*)0),
       vnode_isdir(fvp) ? KAUTH_VNODE_ADD_SUBDIRECTORY : KAUTH_VNODE_ADD_FILE, ctx)) != 0)
    goto out;
  }

  if ((tvp != ((void*)0)) && !vnode_isdir(tvp) &&
    ((error = vnode_authorize(tvp, tdvp, KAUTH_VNODE_DELETE, ctx)) != 0)) {
   goto out;
  }
 }




out:
 return error;
}
