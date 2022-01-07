
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int * uio_t ;
typedef scalar_t__ uint32_t ;
typedef int kauth_filesec_t ;
typedef int kauth_acl_t ;


 int CAST_USER_ADDR_T (int ) ;
 int ENOMEM ;
 scalar_t__ KAUTH_ACL_COPYSIZE (int ) ;
 scalar_t__ KAUTH_ACL_SIZE (int ) ;
 int KAUTH_DEBUG (char*) ;
 int KAUTH_ENDIAN_DISK ;
 int KAUTH_ENDIAN_HOST ;
 int KAUTH_FILESEC_NOACL ;
 scalar_t__ KAUTH_FILESEC_SIZE (int ) ;
 int KAUTH_FILESEC_XATTR ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 int VFS_DEBUG (int ,int ,char*,int) ;
 int XATTR_NOSECURITY ;
 int kauth_filesec_acl_setendian (int ,int ,int ) ;
 int uio_addiov (int *,int ,scalar_t__) ;
 int * uio_create (int,int ,int ,int ) ;
 int uio_free (int *) ;
 int vn_setxattr (int ,int ,int *,int ,int ) ;

__attribute__((used)) static int
vnode_set_filesec(vnode_t vp, kauth_filesec_t fsec, kauth_acl_t acl, vfs_context_t ctx)
{
 uio_t fsec_uio;
 int error;
 uint32_t saved_acl_copysize;

 fsec_uio = ((void*)0);

 if ((fsec_uio = uio_create(2, 0, UIO_SYSSPACE, UIO_WRITE)) == ((void*)0)) {
  KAUTH_DEBUG("    ERROR - could not allocate iov to write ACL");
  error = ENOMEM;
  goto out;
 }




 saved_acl_copysize = KAUTH_ACL_COPYSIZE(acl);

 kauth_filesec_acl_setendian(KAUTH_ENDIAN_DISK, fsec, acl);

 uio_addiov(fsec_uio, CAST_USER_ADDR_T(fsec), KAUTH_FILESEC_SIZE(0) - KAUTH_ACL_SIZE(KAUTH_FILESEC_NOACL));
 uio_addiov(fsec_uio, CAST_USER_ADDR_T(acl), saved_acl_copysize);
 error = vn_setxattr(vp,
     KAUTH_FILESEC_XATTR,
     fsec_uio,
     XATTR_NOSECURITY,
     ctx);
 VFS_DEBUG(ctx, vp, "SETATTR - set ACL returning %d", error);

 kauth_filesec_acl_setendian(KAUTH_ENDIAN_HOST, fsec, acl);

out:
 if (fsec_uio != ((void*)0))
  uio_free(fsec_uio);
 return(error);
}
