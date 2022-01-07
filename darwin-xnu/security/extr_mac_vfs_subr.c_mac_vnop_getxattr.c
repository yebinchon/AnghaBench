
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
typedef int uio_t ;
typedef int uio_buf ;
struct vnode {int dummy; } ;


 int CAST_USER_ADDR_T (char*) ;
 int UIO_READ ;
 int UIO_SIZEOF (int) ;
 int UIO_SYSSPACE ;
 int XATTR_NOSECURITY ;
 int uio_addiov (int ,int ,size_t) ;
 int uio_createwithbuffer (int,int ,int ,int ,char*,int) ;
 size_t uio_resid (int ) ;
 int vfs_context_current () ;
 int vn_getxattr (struct vnode*,char const*,int ,size_t*,int,int ) ;

int
mac_vnop_getxattr (struct vnode *vp, const char *name, char *buf, size_t len,
     size_t *attrlen)
{
 vfs_context_t ctx = vfs_context_current();
 int options = XATTR_NOSECURITY;
 char uio_buf[ UIO_SIZEOF(1) ];
        uio_t auio;
 int error;

 auio = uio_createwithbuffer(1, 0, UIO_SYSSPACE, UIO_READ,
        &uio_buf[0], sizeof(uio_buf));
 uio_addiov(auio, CAST_USER_ADDR_T(buf), len);

 error = vn_getxattr(vp, name, auio, attrlen, options, ctx);
 *attrlen = len - uio_resid(auio);

 return (error);
}
