
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
struct vnode_attr {int va_vaflags; } ;
struct timespec {int dummy; } ;
typedef scalar_t__ kauth_action_t ;
struct TYPE_9__ {int v_flag; } ;


 int ARG_VNODE1 ;
 int AUDIT_ARG (int ,TYPE_1__*,int ) ;
 int EACCES ;
 int EPERM ;
 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_SET (struct vnode_attr*,int ,struct timespec const) ;
 int VA_UTIMES_NULL ;
 int VISNAMEDSTREAM ;
 int mac_vnode_check_setutimes (int ,TYPE_1__*,struct timespec const,struct timespec const) ;
 int mac_vnode_notify_setutimes (int ,TYPE_1__*,struct timespec const,struct timespec const) ;
 int va_access_time ;
 int va_modify_time ;
 int vnode_authattr (TYPE_1__*,struct vnode_attr*,scalar_t__*,int ) ;
 int vnode_authorize (TYPE_1__*,int *,scalar_t__,int ) ;
 int vnode_setattr (TYPE_1__*,struct vnode_attr*,int ) ;
 int vnpath ;

__attribute__((used)) static int
setutimes(vfs_context_t ctx, vnode_t vp, const struct timespec *ts,
 int nullflag)
{
 int error;
 struct vnode_attr va;
 kauth_action_t action;

 AUDIT_ARG(vnpath, vp, ARG_VNODE1);

 VATTR_INIT(&va);
 VATTR_SET(&va, va_access_time, ts[0]);
 VATTR_SET(&va, va_modify_time, ts[1]);
 if (nullflag)
  va.va_vaflags |= VA_UTIMES_NULL;
 if ((error = vnode_authattr(vp, &va, &action, ctx)) != 0) {
  if (!nullflag && error == EACCES)
   error = EPERM;
  goto out;
 }


 if ((action != 0) && ((error = vnode_authorize(vp, ((void*)0), action, ctx)) != 0)) {
  if (!nullflag && error == EACCES)
   error = EPERM;
  goto out;
 }
 error = vnode_setattr(vp, &va, ctx);






out:
 return error;
}
