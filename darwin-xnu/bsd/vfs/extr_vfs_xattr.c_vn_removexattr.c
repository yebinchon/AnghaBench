
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
struct TYPE_11__ {int v_flag; } ;


 int EJUSTRETURN ;
 int ENOATTR ;
 int ENOTSUP ;
 int EPERM ;
 int KAUTH_VNODE_WRITE_EXTATTRIBUTES ;
 int MNT_MULTILABEL ;
 int VISNAMEDSTREAM ;
 int VNOP_REMOVEXATTR (TYPE_1__*,char const*,int,int ) ;
 int XATTR_NODEFAULT ;
 int XATTR_NOSECURITY ;
 int XATTR_VNODE_SUPPORTED (TYPE_1__*) ;
 int default_removexattr (TYPE_1__*,char const*,int,int ) ;
 int mac_vnode_check_deleteextattr (int ,TYPE_1__*,char const*) ;
 int mac_vnode_label_update_extattr (int ,TYPE_1__*,char const*) ;
 int mac_vnode_notify_deleteextattr (int ,TYPE_1__*,char const*) ;
 int vfs_flags (int ) ;
 int vnode_authorize (TYPE_1__*,int *,int ,int ) ;
 int vnode_mount (TYPE_1__*) ;
 int xattr_validatename (char const*) ;

int
vn_removexattr(vnode_t vp, const char * name, int options, vfs_context_t context)
{
 int error;

 if (!XATTR_VNODE_SUPPORTED(vp)) {
  return (EPERM);
 }







 if ((error = xattr_validatename(name))) {
  return (error);
 }
 if (!(options & XATTR_NOSECURITY)) {





  error = vnode_authorize(vp, ((void*)0), KAUTH_VNODE_WRITE_EXTATTRIBUTES, context);
  if (error)
   goto out;
 }
 error = VNOP_REMOVEXATTR(vp, name, options, context);
 if (error == ENOTSUP && !(options & XATTR_NODEFAULT)) {



  error = default_removexattr(vp, name, options, context);
 }







out:
 return (error);
}
