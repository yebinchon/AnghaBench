
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef size_t uint64_t ;
typedef int uint32_t ;
struct vnode_attr {size_t va_data_size; size_t va_total_size; size_t va_data_alloc; size_t va_total_alloc; int va_iosize; int va_rdev; size_t va_rsrc_length; size_t va_rsrc_alloc; scalar_t__ va_nlink; } ;
struct vnode {scalar_t__ v_type; TYPE_4__* v_specinfo; TYPE_2__* v_mount; } ;
struct attrlist {int fileattr; } ;
struct TYPE_7__ {int fileattr; } ;
struct _attrlist_buf {TYPE_3__ actual; } ;
typedef int errno_t ;
struct TYPE_8__ {int si_rdev; } ;
struct TYPE_5__ {int f_bsize; } ;
struct TYPE_6__ {TYPE_1__ mnt_vfsstat; } ;


 int ATTR_FILE_ALLOCSIZE ;
 int ATTR_FILE_CLUMPSIZE ;
 int ATTR_FILE_DATAALLOCSIZE ;
 int ATTR_FILE_DATALENGTH ;
 int ATTR_FILE_DEVTYPE ;
 int ATTR_FILE_IOBLOCKSIZE ;
 int ATTR_FILE_LINKCOUNT ;
 int ATTR_FILE_RSRCALLOCSIZE ;
 int ATTR_FILE_RSRCLENGTH ;
 int ATTR_FILE_TOTALSIZE ;
 int ATTR_PACK4 (struct _attrlist_buf,int) ;
 int ATTR_PACK8 (struct _attrlist_buf,size_t) ;
 int EACCES ;
 int ENOATTR ;
 int ENOENT ;
 int ENOTSUP ;
 int EPERM ;
 scalar_t__ VATTR_IS_SUPPORTED (struct vnode_attr*,int ) ;
 scalar_t__ VBLK ;
 scalar_t__ VCHR ;
 int XATTR_NOSECURITY ;
 int XATTR_RESOURCEFORK_NAME ;
 size_t roundup (size_t,int) ;
 int va_data_alloc ;
 int va_data_size ;
 int va_iosize ;
 int va_rdev ;
 int va_rsrc_alloc ;
 int va_rsrc_length ;
 int va_total_alloc ;
 int va_total_size ;
 int vn_getxattr (struct vnode*,int ,int *,size_t*,int ,int ) ;

__attribute__((used)) static errno_t
attr_pack_file(vfs_context_t ctx, struct vnode *vp, struct attrlist *alp,
    struct _attrlist_buf *abp, struct vnode_attr *vap, int return_valid,
    int pack_invalid, int is_bulk)
{
 size_t rsize = 0;
 uint64_t rlength = 0;
 uint64_t ralloc = 0;
 int error = 0;





 if (vp && !is_bulk &&
     (alp->fileattr & (ATTR_FILE_TOTALSIZE | ATTR_FILE_ALLOCSIZE |
     ATTR_FILE_RSRCLENGTH | ATTR_FILE_RSRCALLOCSIZE))) {

  error = vn_getxattr(vp, XATTR_RESOURCEFORK_NAME, ((void*)0),
      &rsize, XATTR_NOSECURITY, ctx);
  if (error) {
   if ((error == ENOENT) || (error == ENOATTR) ||
       (error == ENOTSUP) || (error == EPERM) ||
       (error == EACCES)) {
    rsize = 0;
    error = 0;
   } else {
    goto out;
   }
  }
  rlength = rsize;

  if (alp->fileattr & (ATTR_FILE_RSRCALLOCSIZE |
      ATTR_FILE_ALLOCSIZE)) {
   uint32_t blksize;

   blksize = vp->v_mount->mnt_vfsstat.f_bsize;

   if (blksize == 0) {
    blksize = 512;
   }
   ralloc = roundup(rsize, blksize);
  }
 }

 if (alp->fileattr & ATTR_FILE_LINKCOUNT) {
  ATTR_PACK4((*abp), (uint32_t)vap->va_nlink);
  abp->actual.fileattr |= ATTR_FILE_LINKCOUNT;
 }
 if (alp->fileattr & ATTR_FILE_TOTALSIZE) {
  if (!is_bulk) {
   uint64_t totalsize = rlength;

   if (VATTR_IS_SUPPORTED(vap, va_data_size)) {
    totalsize += vap->va_data_size;
   } else if (VATTR_IS_SUPPORTED(vap, va_total_size)) {
    totalsize += vap->va_total_size;
   }

   ATTR_PACK8((*abp), totalsize);
   abp->actual.fileattr |= ATTR_FILE_TOTALSIZE;
  } else if (VATTR_IS_SUPPORTED(vap, va_total_size)) {
   ATTR_PACK8((*abp), vap->va_total_size);
   abp->actual.fileattr |= ATTR_FILE_TOTALSIZE;
  } else if (!return_valid || pack_invalid) {
   uint64_t zero_val = 0;

   ATTR_PACK8((*abp), zero_val);
  }
 }
 if (alp->fileattr & ATTR_FILE_ALLOCSIZE) {
  if (!is_bulk) {
   uint64_t totalalloc = ralloc;





   if (VATTR_IS_SUPPORTED(vap, va_data_alloc)) {
    totalalloc += vap->va_data_alloc;
   } else if (VATTR_IS_SUPPORTED(vap, va_total_alloc)) {
    totalalloc += vap->va_total_alloc;
   }

   ATTR_PACK8((*abp), totalalloc);
   abp->actual.fileattr |= ATTR_FILE_ALLOCSIZE;
  } else if (VATTR_IS_SUPPORTED(vap, va_total_alloc)) {
   ATTR_PACK8((*abp), vap->va_total_alloc);
   abp->actual.fileattr |= ATTR_FILE_ALLOCSIZE;
  } else if (!return_valid || pack_invalid) {
   uint64_t zero_val = 0;

   ATTR_PACK8((*abp), zero_val);
  }
 }
 if (alp->fileattr & ATTR_FILE_IOBLOCKSIZE) {
  if (VATTR_IS_SUPPORTED(vap, va_iosize)) {
   ATTR_PACK4((*abp), vap->va_iosize);
   abp->actual.fileattr |= ATTR_FILE_IOBLOCKSIZE;
  } else if (!return_valid || pack_invalid) {
   ATTR_PACK4((*abp), 0);
  }
 }
 if (alp->fileattr & ATTR_FILE_CLUMPSIZE) {
  if (!return_valid || pack_invalid) {
   ATTR_PACK4((*abp), 0);
   abp->actual.fileattr |= ATTR_FILE_CLUMPSIZE;
  }
 }
 if (alp->fileattr & ATTR_FILE_DEVTYPE) {
  if (vp && (vp->v_type == VCHR || vp->v_type == VBLK)) {
   uint32_t dev;

   if (vp->v_specinfo != ((void*)0)) {
    dev = vp->v_specinfo->si_rdev;
   } else if (VATTR_IS_SUPPORTED(vap, va_rdev)) {
    dev = vap->va_rdev;
   } else {
    dev = 0;
   }
   ATTR_PACK4((*abp), dev);
   abp->actual.fileattr |= ATTR_FILE_DEVTYPE;
  } else if (vp) {
   ATTR_PACK4((*abp), 0);
   abp->actual.fileattr |= ATTR_FILE_DEVTYPE;
  } else if (VATTR_IS_SUPPORTED(vap, va_rdev)) {
   ATTR_PACK4((*abp), vap->va_rdev);
   abp->actual.fileattr |= ATTR_FILE_DEVTYPE;
  } else if (!return_valid || pack_invalid) {
   ATTR_PACK4((*abp), 0);
  }
 }





 if (alp->fileattr & ATTR_FILE_DATALENGTH) {
  if (VATTR_IS_SUPPORTED(vap, va_data_size)) {
   ATTR_PACK8((*abp), vap->va_data_size);
   abp->actual.fileattr |= ATTR_FILE_DATALENGTH;
  } else if (VATTR_IS_SUPPORTED(vap, va_total_size)){
   ATTR_PACK8((*abp), vap->va_total_size);
   abp->actual.fileattr |= ATTR_FILE_DATALENGTH;
  } else if (!return_valid || pack_invalid) {
   uint64_t zero_val = 0;
   ATTR_PACK8((*abp), zero_val);
  }
 }
 if (alp->fileattr & ATTR_FILE_DATAALLOCSIZE) {
  if (VATTR_IS_SUPPORTED(vap, va_data_alloc)) {
   ATTR_PACK8((*abp), vap->va_data_alloc);
   abp->actual.fileattr |= ATTR_FILE_DATAALLOCSIZE;
  } else if (VATTR_IS_SUPPORTED(vap, va_total_alloc)){
   ATTR_PACK8((*abp), vap->va_total_alloc);
   abp->actual.fileattr |= ATTR_FILE_DATAALLOCSIZE;
  } else if (!return_valid || pack_invalid) {
   uint64_t zero_val = 0;
   ATTR_PACK8((*abp), zero_val);
  }
 }

 if (alp->fileattr & ATTR_FILE_RSRCLENGTH) {
  if (!is_bulk) {
   ATTR_PACK8((*abp), rlength);
   abp->actual.fileattr |= ATTR_FILE_RSRCLENGTH;
  } else if (VATTR_IS_SUPPORTED(vap, va_rsrc_length)) {
   ATTR_PACK8((*abp), vap->va_rsrc_length);
   abp->actual.fileattr |= ATTR_FILE_RSRCLENGTH;
  } else if (!return_valid || pack_invalid) {
   uint64_t zero_val = 0;

   ATTR_PACK8((*abp), zero_val);
  }
 }
 if (alp->fileattr & ATTR_FILE_RSRCALLOCSIZE) {
  if (!is_bulk) {
   ATTR_PACK8((*abp), ralloc);
   abp->actual.fileattr |= ATTR_FILE_RSRCALLOCSIZE;
  } else if (VATTR_IS_SUPPORTED(vap, va_rsrc_alloc)) {
   ATTR_PACK8((*abp), vap->va_rsrc_alloc);
   abp->actual.fileattr |= ATTR_FILE_RSRCALLOCSIZE;
  } else if (!return_valid || pack_invalid) {
   uint64_t zero_val = 0;

   ATTR_PACK8((*abp), zero_val);
  }
 }
out:
 return (error);
}
