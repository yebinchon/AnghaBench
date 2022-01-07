
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int user_addr_t ;
typedef int uid_t ;
struct vnode_attr {int dummy; } ;
struct nameidata {int ni_vp; } ;
typedef scalar_t__ kauth_action_t ;
typedef int gid_t ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int AT_SYMLINK_NOFOLLOW ;
 int AUDITVNPATH1 ;
 int AUDIT_ARG (int ,int ,int ) ;
 int EACCES ;
 int EPERM ;
 int FOLLOW ;
 int LOOKUP ;
 int NDINIT (struct nameidata*,int ,int ,int,int,int ,int ) ;
 int NOFOLLOW ;
 int OP_SETATTR ;
 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_SET (struct vnode_attr*,int ,int ) ;
 scalar_t__ VNOVAL ;
 int mac_vnode_check_setowner (int ,int ,int ,int ) ;
 int mac_vnode_notify_setowner (int ,int ,int ,int ) ;
 int nameiat (struct nameidata*,int) ;
 int nameidone (struct nameidata*) ;
 int owner ;
 int va_gid ;
 int va_uid ;
 int vnode_authattr (int ,struct vnode_attr*,scalar_t__*,int ) ;
 int vnode_authorize (int ,int *,scalar_t__,int ) ;
 int vnode_put (int ) ;
 int vnode_setattr (int ,struct vnode_attr*,int ) ;

__attribute__((used)) static int
fchownat_internal(vfs_context_t ctx, int fd, user_addr_t path, uid_t uid,
   gid_t gid, int flag, enum uio_seg segflg)
{
 vnode_t vp;
 struct vnode_attr va;
 int error;
 struct nameidata nd;
 int follow;
 kauth_action_t action;

 AUDIT_ARG(owner, uid, gid);

 follow = (flag & AT_SYMLINK_NOFOLLOW) ? NOFOLLOW : FOLLOW;
 NDINIT(&nd, LOOKUP, OP_SETATTR, follow | AUDITVNPATH1, segflg,
     path, ctx);
 error = nameiat(&nd, fd);
 if (error)
  return (error);
 vp = nd.ni_vp;

 nameidone(&nd);

 VATTR_INIT(&va);
 if (uid != (uid_t)VNOVAL)
  VATTR_SET(&va, va_uid, uid);
 if (gid != (gid_t)VNOVAL)
  VATTR_SET(&va, va_gid, gid);
 if ((error = vnode_authattr(vp, &va, &action, ctx)) != 0)
  goto out;
 if (action && ((error = vnode_authorize(vp, ((void*)0), action, ctx)) != 0))
  goto out;
 error = vnode_setattr(vp, &va, ctx);






out:




 if (error == EACCES)
  error = EPERM;

 vnode_put(vp);
 return (error);
}
