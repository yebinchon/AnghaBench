
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
typedef int uio_t ;
struct TYPE_8__ {int v_flag; } ;


 int ENOTSUP ;
 int EPERM ;
 int KAUTH_VNODE_READ_EXTATTRIBUTES ;
 int VISNAMEDSTREAM ;
 int VNOP_LISTXATTR (TYPE_1__*,int ,size_t*,int,int ) ;
 int XATTR_NODEFAULT ;
 int XATTR_NOSECURITY ;
 int XATTR_VNODE_SUPPORTED (TYPE_1__*) ;
 int default_listxattr (TYPE_1__*,int ,size_t*,int,int ) ;
 int mac_vnode_check_listextattr (int ,TYPE_1__*) ;
 int vnode_authorize (TYPE_1__*,int *,int ,int ) ;

int
vn_listxattr(vnode_t vp, uio_t uio, size_t *size, int options, vfs_context_t context)
{
 int error;

 if (!XATTR_VNODE_SUPPORTED(vp)) {
  return (EPERM);
 }







 if (!(options & XATTR_NOSECURITY)) {






  error = vnode_authorize(vp, ((void*)0), KAUTH_VNODE_READ_EXTATTRIBUTES, context);
  if (error)
   goto out;
 }

 error = VNOP_LISTXATTR(vp, uio, size, options, context);
 if (error == ENOTSUP && !(options & XATTR_NODEFAULT)) {





  error = default_listxattr(vp, uio, size, options, context);
 }
out:
 return (error);
}
