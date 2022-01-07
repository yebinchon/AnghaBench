
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int * uio_t ;
typedef int uio_buf ;
struct vfs_context {int dummy; } ;


 int CAST_USER_ADDR_T (char*) ;
 int ENOMEM ;
 int FSE_ARG_DONE ;
 int FSE_ARG_VNODE ;
 int FSE_FINDER_INFO_CHANGED ;
 int UIO_SIZEOF (int) ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 int XATTR_FINDERINFO_NAME ;
 int XATTR_NOSECURITY ;
 int add_fsevent (int ,struct vfs_context*,int ,int ,int ) ;
 scalar_t__ need_fsevent (int ,int ) ;
 int uio_addiov (int *,int ,int) ;
 int * uio_createwithbuffer (int,int ,int ,int ,char*,int) ;
 int uio_free (int *) ;
 int vn_setxattr (int ,int ,int *,int ,struct vfs_context*) ;

__attribute__((used)) static int
setattrlist_setfinderinfo(vnode_t vp, char *fndrinfo, struct vfs_context *ctx)
{
 uio_t auio;
 char uio_buf[UIO_SIZEOF(1)];
 int error;

 if ((auio = uio_createwithbuffer(1, 0, UIO_SYSSPACE, UIO_WRITE, uio_buf, sizeof(uio_buf))) == ((void*)0)) {
  error = ENOMEM;
 } else {
  uio_addiov(auio, CAST_USER_ADDR_T(fndrinfo), 32);
  error = vn_setxattr(vp, XATTR_FINDERINFO_NAME, auio, XATTR_NOSECURITY, ctx);
  uio_free(auio);
 }






 return (error);
}
