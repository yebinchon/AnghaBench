
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_13__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
typedef int user_addr_t ;
struct vnode_attr {int dummy; } ;
struct TYPE_22__ {int cn_nameptr; } ;
struct nameidata {TYPE_1__* ni_vp; TYPE_13__ ni_cnd; TYPE_1__* ni_dvp; int ni_flag; } ;
struct TYPE_24__ {int mode; } ;
typedef TYPE_2__ fse_info ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef int caddr_t ;
struct TYPE_23__ {int v_flag; } ;


 int AUDITVNPATH1 ;
 int DELETE ;
 int EBUSY ;
 int EKEEPLOOKING ;
 int ENOENT ;
 int ENOMEM ;
 int ENOTEMPTY ;
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
 int NAMEI_COMPOUNDRMDIR ;
 int NDINIT (struct nameidata*,int ,int ,int,int,int ,int ) ;
 TYPE_1__* NULLVP ;
 int OP_RMDIR ;
 int PVFS ;
 int RELEASE_PATH (char*) ;
 int VISHARDLINK ;
 int VNODE_UPDATE_PARENT ;
 int VROOT ;
 int add_fsevent (int ,int ,int ,int,char*,int ,TYPE_2__*,int ) ;
 int assert (int) ;
 int get_fse_info (TYPE_1__*,TYPE_2__*,int ) ;
 int kauth_authorize_fileop (int ,int ,uintptr_t,uintptr_t) ;
 int kauth_authorize_fileop_has_listeners () ;
 int nameiat (struct nameidata*,int) ;
 int nameidone (struct nameidata*) ;
 int need_fsevent (int ,TYPE_1__*) ;
 int panic (char*) ;
 int rmdir_remove_orphaned_appleDouble (TYPE_1__*,int ,int*) ;
 int safe_getpath (TYPE_1__*,int ,char*,int ,int*) ;
 int tsleep (TYPE_1__*,int ,char*,int) ;
 int vfs_context_kernel () ;
 int vfs_context_ucred (int ) ;
 int vfs_get_notify_attributes (struct vnode_attr*) ;
 int vn_authorize_rmdir (TYPE_1__*,TYPE_1__*,TYPE_13__*,int ,int *) ;
 int vn_rmdir (TYPE_1__*,TYPE_1__**,struct nameidata*,struct vnode_attr*,int ) ;
 int vnode_compound_rmdir_available (TYPE_1__*) ;
 int vnode_get_fse_info_from_vap (TYPE_1__*,TYPE_2__*,struct vnode_attr*) ;
 scalar_t__ vnode_isswap (TYPE_1__*) ;
 int vnode_put (TYPE_1__*) ;
 int vnode_update_identity (TYPE_1__*,int *,int *,int ,int ,int ) ;
 int wakeup_one (int ) ;

__attribute__((used)) static int
rmdirat_internal(vfs_context_t ctx, int fd, user_addr_t dirpath,
    enum uio_seg segflg)
{
 vnode_t vp, dvp;
 int error;
 struct nameidata nd;
 char *path = ((void*)0);
 int len=0;
 int has_listeners = 0;
 int need_event = 0;
 int truncated = 0;



 struct vnode_attr *vap = ((void*)0);
 int restart_count = 0;
 int batched;

 int restart_flag;






 do {
  NDINIT(&nd, DELETE, OP_RMDIR, LOCKPARENT | AUDITVNPATH1,
      segflg, dirpath, ctx);
  nd.ni_flag = NAMEI_COMPOUNDRMDIR;
continue_lookup:
  restart_flag = 0;
  vap = ((void*)0);

  error = nameiat(&nd, fd);
  if (error)
   return (error);

  dvp = nd.ni_dvp;
  vp = nd.ni_vp;

  if (vp) {
   batched = vnode_compound_rmdir_available(vp);

   if (vp->v_flag & VROOT) {



    error = EBUSY;
    goto out;
   }
   if (vnode_isswap(vp) && (ctx != vfs_context_kernel())) {
    error = EPERM;
    goto out;
   }
   if (!batched) {
    error = vn_authorize_rmdir(dvp, vp, &nd.ni_cnd, ctx, ((void*)0));
    if (error) {
     if (error == ENOENT) {
      assert(restart_count < MAX_AUTHORIZE_ENOENT_RETRIES);
      if (restart_count < MAX_AUTHORIZE_ENOENT_RETRIES) {
       restart_flag = 1;
       restart_count += 1;
      }
     }
     goto out;
    }
   }
  } else {
   batched = 1;

   if (!vnode_compound_rmdir_available(dvp)) {
    panic("No error, but no compound rmdir?");
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

   len = safe_getpath(dvp, nd.ni_cnd.cn_nameptr, path, MAXPATHLEN, &truncated);





  }

  error = vn_rmdir(dvp, &vp, &nd, vap, ctx);
  nd.ni_vp = vp;
  if (vp == NULLVP) {

   goto out;
  }

  if (error == EKEEPLOOKING) {
   goto continue_lookup;
  } else if (batched && error == ENOENT) {
   assert(restart_count < MAX_AUTHORIZE_ENOENT_RETRIES);
   if (restart_count < MAX_AUTHORIZE_ENOENT_RETRIES) {





    restart_flag = 1;
    restart_count += 1;
    goto out;
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
  if (path != ((void*)0)) {
   RELEASE_PATH(path);
   path = ((void*)0);
  }




  nameidone(&nd);
  vnode_put(dvp);

  if (vp)
   vnode_put(vp);

  if (restart_flag == 0) {
   wakeup_one((caddr_t)vp);
   return (error);
  }
  tsleep(vp, PVFS, "rm AD", 1);

 } while (restart_flag != 0);

 return (error);

}
