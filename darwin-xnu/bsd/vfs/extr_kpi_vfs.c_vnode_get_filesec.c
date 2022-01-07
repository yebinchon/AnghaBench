
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int * uio_t ;
typedef size_t uint32_t ;
typedef TYPE_2__* kauth_filesec_t ;
struct TYPE_8__ {int acl_entrycount; } ;
struct TYPE_9__ {size_t fsec_magic; TYPE_1__ fsec_acl; } ;


 int CAST_USER_ADDR_T (TYPE_2__*) ;
 int EJUSTRETURN ;
 int ENOATTR ;
 int ENOENT ;
 int ENOMEM ;
 size_t KAUTH_ACL_MAX_ENTRIES ;
 int KAUTH_DEBUG (char*,...) ;
 int KAUTH_ENDIAN_HOST ;
 size_t KAUTH_FILESEC_COUNT (size_t) ;
 int KAUTH_FILESEC_MAGIC ;
 size_t KAUTH_FILESEC_NOACL ;
 size_t KAUTH_FILESEC_SIZE (size_t) ;
 int KAUTH_FILESEC_VALID (size_t) ;
 int KAUTH_FILESEC_XATTR ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int XATTR_NOSECURITY ;
 int kauth_filesec_acl_setendian (int ,TYPE_2__*,int *) ;
 TYPE_2__* kauth_filesec_alloc (size_t) ;
 int kauth_filesec_free (TYPE_2__*) ;
 size_t ntohl (int ) ;
 scalar_t__ uio_addiov (int *,int ,size_t) ;
 int * uio_create (int,int ,int ,int ) ;
 int uio_free (int *) ;
 int vn_getxattr (int ,int ,int *,size_t*,int ,int ) ;

__attribute__((used)) static int
vnode_get_filesec(vnode_t vp, kauth_filesec_t *fsecp, vfs_context_t ctx)
{
 kauth_filesec_t fsec;
 uio_t fsec_uio;
 size_t fsec_size;
 size_t xsize, rsize;
 int error;
 uint32_t host_fsec_magic;
 uint32_t host_acl_entrycount;

 fsec = ((void*)0);
 fsec_uio = ((void*)0);


 error = vn_getxattr(vp, KAUTH_FILESEC_XATTR, ((void*)0), &xsize, XATTR_NOSECURITY, ctx);
 if (error != 0) {

  if ((error == ENOATTR) || (error == ENOENT) || (error == EJUSTRETURN))
   error = 0;

  goto out;
 }







 if (!KAUTH_FILESEC_VALID(xsize)) {
  KAUTH_DEBUG("    ERROR - Bogus kauth_fiilesec_t: %ld bytes", xsize);
  error = 0;
  goto out;
 }


 fsec_size = KAUTH_FILESEC_COUNT(xsize);
 if (fsec_size > KAUTH_ACL_MAX_ENTRIES) {
  KAUTH_DEBUG("    ERROR - Bogus (too large) kauth_fiilesec_t: %ld bytes", xsize);
  error = 0;
  goto out;
 }


 if (((fsec = kauth_filesec_alloc(fsec_size)) == ((void*)0)) ||
     ((fsec_uio = uio_create(1, 0, UIO_SYSSPACE, UIO_READ)) == ((void*)0)) ||
     uio_addiov(fsec_uio, CAST_USER_ADDR_T(fsec), xsize)) {
  KAUTH_DEBUG("    ERROR - could not allocate iov to read ACL");
  error = ENOMEM;
  goto out;
 }


 rsize = xsize;
 if ((error = vn_getxattr(vp,
   KAUTH_FILESEC_XATTR,
   fsec_uio,
   &rsize,
   XATTR_NOSECURITY,
   ctx)) != 0) {


  if ((error == ENOATTR) || (error == ENOENT) || (error == EJUSTRETURN))
   error = 0;

  goto out;
 }







 if (rsize < KAUTH_FILESEC_SIZE(0)) {
  KAUTH_DEBUG("ACL - DATA TOO SMALL (%d)", rsize);
  goto out;
 }


 host_fsec_magic = ntohl(KAUTH_FILESEC_MAGIC);
 if (fsec->fsec_magic != host_fsec_magic) {
  KAUTH_DEBUG("ACL - BAD MAGIC %x", host_fsec_magic);
  goto out;
 }


 host_acl_entrycount = ntohl(fsec->fsec_acl.acl_entrycount);
 if (host_acl_entrycount != KAUTH_FILESEC_NOACL) {
  if (host_acl_entrycount > KAUTH_ACL_MAX_ENTRIES) {
   KAUTH_DEBUG("ACL - BAD ENTRYCOUNT %x", host_acl_entrycount);
   goto out;
  }
      if (KAUTH_FILESEC_SIZE(host_acl_entrycount) > rsize) {
   KAUTH_DEBUG("ACL - BUFFER OVERFLOW (%d entries too big for %d)", host_acl_entrycount, rsize);
   goto out;
  }
 }

 kauth_filesec_acl_setendian(KAUTH_ENDIAN_HOST, fsec, ((void*)0));

 *fsecp = fsec;
 fsec = ((void*)0);
 error = 0;
out:
 if (fsec != ((void*)0))
  kauth_filesec_free(fsec);
 if (fsec_uio != ((void*)0))
  uio_free(fsec_uio);
 if (error)
  *fsecp = ((void*)0);
 return(error);
}
