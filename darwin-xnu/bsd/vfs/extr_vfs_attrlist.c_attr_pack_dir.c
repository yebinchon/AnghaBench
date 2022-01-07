
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct vnode_attr {int va_total_size; int va_data_size; int va_iosize; int va_total_alloc; int va_data_alloc; scalar_t__ va_nchildren; scalar_t__ va_dirlinkcount; } ;
struct vnode {int v_flag; TYPE_1__* v_resolve; } ;
struct attrlist {int dirattr; } ;
struct TYPE_4__ {int dirattr; } ;
struct _attrlist_buf {TYPE_2__ actual; } ;
typedef int errno_t ;
struct TYPE_3__ {int vr_flags; } ;


 int ATTR_DIR_ALLOCSIZE ;
 int ATTR_DIR_DATALENGTH ;
 int ATTR_DIR_ENTRYCOUNT ;
 int ATTR_DIR_IOBLOCKSIZE ;
 int ATTR_DIR_LINKCOUNT ;
 int ATTR_DIR_MOUNTSTATUS ;
 int ATTR_PACK4 (struct _attrlist_buf,int ) ;
 int ATTR_PACK8 (struct _attrlist_buf,int ) ;
 int DIR_MNTSTATUS_MNTPOINT ;
 int DIR_MNTSTATUS_TRIGGER ;
 scalar_t__ VATTR_IS_SUPPORTED (struct vnode_attr*,int ) ;
 int VNT_NO_DIRECT_MOUNT ;
 int VROOT ;
 int va_data_alloc ;
 int va_data_size ;
 int va_iosize ;
 int va_total_alloc ;
 int va_total_size ;
 scalar_t__ vnode_mountedhere (struct vnode*) ;

__attribute__((used)) static errno_t
attr_pack_dir(struct vnode *vp, struct attrlist *alp, struct _attrlist_buf *abp,
    struct vnode_attr *vap, int return_valid, int pack_invalid)
{
 if (alp->dirattr & ATTR_DIR_LINKCOUNT) {
  ATTR_PACK4((*abp), (uint32_t)vap->va_dirlinkcount);
  abp->actual.dirattr |= ATTR_DIR_LINKCOUNT;
 }
 if (alp->dirattr & ATTR_DIR_ENTRYCOUNT) {
  ATTR_PACK4((*abp), (uint32_t)vap->va_nchildren);
  abp->actual.dirattr |= ATTR_DIR_ENTRYCOUNT;
 }
 if (alp->dirattr & ATTR_DIR_MOUNTSTATUS) {
  uint32_t mntstat;

  if (vp) {






   if ((vp->v_flag & VROOT) || vnode_mountedhere(vp)) {
    mntstat = DIR_MNTSTATUS_MNTPOINT;
   } else {
    mntstat = 0;
   }
  } else {
   mntstat = 0;
  }

  ATTR_PACK4((*abp), mntstat);
  abp->actual.dirattr |= ATTR_DIR_MOUNTSTATUS;
 }
 if (alp->dirattr & ATTR_DIR_ALLOCSIZE) {
  if (VATTR_IS_SUPPORTED(vap, va_data_alloc)) {
   ATTR_PACK8((*abp), vap->va_data_alloc);
   abp->actual.dirattr |= ATTR_DIR_ALLOCSIZE;
  } else if (VATTR_IS_SUPPORTED(vap, va_total_alloc)) {
   ATTR_PACK8((*abp), vap->va_total_alloc);
   abp->actual.dirattr |= ATTR_DIR_ALLOCSIZE;
  } else if (!return_valid || pack_invalid) {
   uint64_t zero_val = 0;
   ATTR_PACK8((*abp), zero_val);
  }
 }
 if (alp->dirattr & ATTR_DIR_IOBLOCKSIZE) {
  if (VATTR_IS_SUPPORTED(vap, va_iosize)) {
   ATTR_PACK4((*abp), vap->va_iosize);
   abp->actual.dirattr |= ATTR_DIR_IOBLOCKSIZE;
  } else if (!return_valid || pack_invalid) {
   ATTR_PACK4((*abp), 0);
  }
 }





 if (alp->dirattr & ATTR_DIR_DATALENGTH) {
  if (VATTR_IS_SUPPORTED(vap, va_data_size)) {
   ATTR_PACK8((*abp), vap->va_data_size);
   abp->actual.dirattr |= ATTR_DIR_DATALENGTH;
  } else if (VATTR_IS_SUPPORTED(vap, va_total_size)) {
   ATTR_PACK8((*abp), vap->va_total_size);
   abp->actual.dirattr |= ATTR_DIR_DATALENGTH;
  } else if (!return_valid || pack_invalid) {
   uint64_t zero_val = 0;
   ATTR_PACK8((*abp), zero_val);
  }
 }

 return 0;
}
