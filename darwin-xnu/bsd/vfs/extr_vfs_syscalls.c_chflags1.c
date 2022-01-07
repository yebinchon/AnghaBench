
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
struct vnode_attr {int dummy; } ;
typedef int kauth_action_t ;


 int ENOTSUP ;
 int KAUTH_VNODE_NOIMMUTABLE ;
 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_IS_SUPPORTED (struct vnode_attr*,int ) ;
 int VATTR_SET (struct vnode_attr*,int ,int) ;
 int mac_vnode_check_setflags (int ,int ,int) ;
 int mac_vnode_notify_setflags (int ,int ,int) ;
 int va_flags ;
 int vnode_authattr (int ,struct vnode_attr*,int*,int ) ;
 int vnode_authorize (int ,int *,int,int ) ;
 int vnode_put (int ) ;
 int vnode_setattr (int ,struct vnode_attr*,int ) ;

__attribute__((used)) static int
chflags1(vnode_t vp, int flags, vfs_context_t ctx)
{
 struct vnode_attr va;
  kauth_action_t action;
 int error;

 VATTR_INIT(&va);
 VATTR_SET(&va, va_flags, flags);
  if ((error = vnode_authattr(vp, &va, &action, ctx)) != 0)
  goto out;





 if (action && ((error = vnode_authorize(vp, ((void*)0), action | KAUTH_VNODE_NOIMMUTABLE, ctx)) != 0))
  goto out;
 error = vnode_setattr(vp, &va, ctx);






 if ((error == 0) && !VATTR_IS_SUPPORTED(&va, va_flags)) {
  error = ENOTSUP;
 }
out:
 vnode_put(vp);
 return(error);
}
