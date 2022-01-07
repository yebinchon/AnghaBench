
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
typedef int uio_t ;
typedef int uio_buf ;
struct vnode {int v_mount; } ;


 int CAST_USER_ADDR_T (char*) ;
 int EROFS ;
 int FSE_ARG_DONE ;
 int FSE_ARG_VNODE ;
 int FSE_XATTR_MODIFIED ;
 int UIO_SIZEOF (int) ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 int XATTR_NOSECURITY ;
 int add_fsevent (int ,int ,int ,struct vnode*,int ) ;
 int uio_addiov (int ,int ,size_t) ;
 int uio_createwithbuffer (int,int ,int ,int ,char*,int) ;
 int vfs_context_current () ;
 scalar_t__ vfs_isrdonly (int ) ;
 int vn_setxattr (struct vnode*,char const*,int ,int,int ) ;

int
mac_vnop_setxattr (struct vnode *vp, const char *name, char *buf, size_t len)
{
 vfs_context_t ctx;
 int options = XATTR_NOSECURITY;
 char uio_buf[ UIO_SIZEOF(1) ];
        uio_t auio;
 int error;

 if (vfs_isrdonly(vp->v_mount))
  return (EROFS);

 ctx = vfs_context_current();
 auio = uio_createwithbuffer(1, 0, UIO_SYSSPACE, UIO_WRITE,
        &uio_buf[0], sizeof(uio_buf));
 uio_addiov(auio, CAST_USER_ADDR_T(buf), len);

 error = vn_setxattr(vp, name, auio, options, ctx);
 return (error);
}
