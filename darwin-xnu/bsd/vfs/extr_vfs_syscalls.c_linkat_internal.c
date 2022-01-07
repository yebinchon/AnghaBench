
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_13__ ;


typedef TYPE_2__* vnode_t ;
typedef int vfs_context_t ;
typedef int user_addr_t ;
struct vnode_attr {scalar_t__ va_uid; } ;
struct TYPE_23__ {int cn_flags; int cn_nameptr; int cn_nameiop; } ;
struct nameidata {TYPE_13__ ni_cnd; TYPE_2__* ni_vp; TYPE_2__* ni_dvp; int ni_dirp; int ni_op; } ;
struct TYPE_26__ {int mode; } ;
typedef TYPE_3__ fse_info ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_25__ {scalar_t__ v_type; int v_parent; TYPE_1__* v_mount; } ;
struct TYPE_24__ {int mnt_kern_flag; } ;


 int AT_SYMLINK_FOLLOW ;
 int AUDITVNPATH1 ;
 int AUDITVNPATH2 ;
 int CN_NBMOUNTLOOK ;
 int CREATE ;
 int EACCES ;
 int EEXIST ;
 int ENOMEM ;
 int EPERM ;
 int EXDEV ;
 int FOLLOW ;
 int FSE_ARG_DONE ;
 int FSE_ARG_FINFO ;
 int FSE_ARG_STRING ;
 int FSE_ARG_VNODE ;
 int FSE_CREATE_FILE ;
 int FSE_STAT_CHANGED ;
 int FSE_TRUNCATED_PATH ;
 int GET_PATH (char*) ;
 int ISSET (int ,int ) ;
 int KAUTH_FILEOP_LINK ;
 int KAUTH_VNODE_ADD_FILE ;
 int KAUTH_VNODE_LINKTARGET ;
 int LOCKPARENT ;
 int LOOKUP ;
 int MAXPATHLEN ;
 int MNTK_DIR_HARDLINKS ;
 int NDINIT (struct nameidata*,int ,int ,int,int,int ,int ) ;
 int NOFOLLOW ;
 TYPE_2__* NULLVP ;
 int OP_LINK ;
 int OP_LOOKUP ;
 int RELEASE_PATH (char*) ;
 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_IS_SUPPORTED (struct vnode_attr*,int ) ;
 int VATTR_WANTED (struct vnode_attr*,int ) ;
 scalar_t__ VDIR ;
 int VNOP_LINK (TYPE_2__*,TYPE_2__*,TYPE_13__*,int ) ;
 int add_fsevent (int ,int ,int ,int,char*,...) ;
 scalar_t__ get_fse_info (TYPE_2__*,TYPE_3__*,int ) ;
 int kauth_authorize_fileop (int ,int ,uintptr_t,uintptr_t) ;
 int kauth_authorize_fileop_has_listeners () ;
 scalar_t__ kauth_cred_getuid (int ) ;
 int kauth_cred_issuser (int ) ;
 int mac_vnode_check_link (int ,TYPE_2__*,TYPE_2__*,TYPE_13__*) ;
 int mac_vnode_notify_link (int ,TYPE_2__*,TYPE_2__*,TYPE_13__*) ;
 int nameiat (struct nameidata*,int) ;
 int nameidone (struct nameidata*) ;
 int need_fsevent (int ,TYPE_2__*) ;
 int safe_getpath (TYPE_2__*,int ,char*,int,int*) ;
 int va_uid ;
 int vfs_context_ucred (int ) ;
 scalar_t__ vn_getpath (TYPE_2__*,char*,int*) ;
 int vnode_authorize (TYPE_2__*,int *,int ,int ) ;
 scalar_t__ vnode_getattr (TYPE_2__*,struct vnode_attr*,int ) ;
 scalar_t__ vnode_mount (TYPE_2__*) ;
 int vnode_put (TYPE_2__*) ;

__attribute__((used)) static int
linkat_internal(vfs_context_t ctx, int fd1, user_addr_t path, int fd2,
    user_addr_t link, int flag, enum uio_seg segflg)
{
 vnode_t vp, dvp, lvp;
 struct nameidata nd;
 int follow;
 int error;



 int need_event, has_listeners;
 char *target_path = ((void*)0);
 int truncated=0;

 vp = dvp = lvp = NULLVP;


 follow = (flag & AT_SYMLINK_FOLLOW) ? FOLLOW : NOFOLLOW;
 NDINIT(&nd, LOOKUP, OP_LOOKUP, AUDITVNPATH1 | follow,
     segflg, path, ctx);

 error = nameiat(&nd, fd1);
 if (error)
  return (error);
 vp = nd.ni_vp;

 nameidone(&nd);





 if (vp->v_type == VDIR) {
  if (!ISSET(vp->v_mount->mnt_kern_flag, MNTK_DIR_HARDLINKS)) {
   error = EPERM;
   goto out;
  }


  if (!kauth_cred_issuser(vfs_context_ucred(ctx))) {
   struct vnode_attr dva;

   VATTR_INIT(&dva);
   VATTR_WANTED(&dva, va_uid);
   if (vnode_getattr(vp, &dva, ctx) != 0 ||
       !VATTR_IS_SUPPORTED(&dva, va_uid) ||
       (dva.va_uid != kauth_cred_getuid(vfs_context_ucred(ctx)))) {
    error = EACCES;
    goto out;
   }
  }
 }





 nd.ni_cnd.cn_nameiop = CREATE;
 nd.ni_cnd.cn_flags = LOCKPARENT | AUDITVNPATH2 | CN_NBMOUNTLOOK;
 nd.ni_dirp = link;
 error = nameiat(&nd, fd2);
 if (error != 0)
  goto out;
 dvp = nd.ni_dvp;
 lvp = nd.ni_vp;







   if ((error = vnode_authorize(vp, ((void*)0), KAUTH_VNODE_LINKTARGET, ctx)) != 0)
   goto out2;


 if (lvp != NULLVP) {
  error = EEXIST;
  goto out2;
 }

   if (vnode_mount(vp) != vnode_mount(dvp)) {
    error = EXDEV;
    goto out2;
   }


   if ((error = vnode_authorize(dvp, ((void*)0), KAUTH_VNODE_ADD_FILE, ctx)) != 0)
    goto out2;


 error = VNOP_LINK(vp, dvp, &nd.ni_cnd, ctx);
 if (error)
  goto out2;
 need_event = 0;

 has_listeners = kauth_authorize_fileop_has_listeners();

 if (need_event || has_listeners) {
  char *link_to_path = ((void*)0);
  int len, link_name_len;


  GET_PATH(target_path);
  if (target_path == ((void*)0)) {
   error = ENOMEM;
   goto out2;
  }

  len = safe_getpath(dvp, nd.ni_cnd.cn_nameptr, target_path, MAXPATHLEN, &truncated);

  if (has_listeners) {

   GET_PATH(link_to_path);
   if (link_to_path == ((void*)0)) {
    error = ENOMEM;
    goto out2;
   }

   link_name_len = MAXPATHLEN;
   if (vn_getpath(vp, link_to_path, &link_name_len) == 0) {




    kauth_authorize_fileop(vfs_context_ucred(ctx), KAUTH_FILEOP_LINK,
             (uintptr_t)link_to_path,
             (uintptr_t)target_path);
   }
   if (link_to_path != ((void*)0)) {
    RELEASE_PATH(link_to_path);
   }
  }
 }
out2:




 nameidone(&nd);
 if (target_path != ((void*)0)) {
  RELEASE_PATH(target_path);
 }
out:
 if (lvp)
  vnode_put(lvp);
 if (dvp)
  vnode_put(dvp);
 vnode_put(vp);
 return (error);
}
