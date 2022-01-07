
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct vnode_attr {int va_fileid; int va_linkid; int va_private_size; } ;
struct vnode {int dummy; } ;
struct attrlist {int forkattr; } ;
struct TYPE_2__ {int forkattr; } ;
struct _attrlist_buf {TYPE_1__ actual; } ;
typedef int ssize_t ;
typedef int errno_t ;


 int ATTR_CMNEXT_LINKID ;
 int ATTR_CMNEXT_PRIVATESIZE ;
 int ATTR_CMNEXT_RELPATH ;
 int ATTR_PACK8 (struct _attrlist_buf,int ) ;
 scalar_t__ VATTR_IS_SUPPORTED (struct vnode_attr*,int ) ;
 int attrlist_pack_string (struct _attrlist_buf*,char const*,int ) ;
 int va_linkid ;
 int va_private_size ;

__attribute__((used)) static errno_t
attr_pack_common_extended(struct vnode *vp, struct attrlist *alp,
  struct _attrlist_buf *abp, const char *relpathptr, ssize_t relpathlen,
  struct vnode_attr *vap, int return_valid, int pack_invalid)
{
 if (vp && (alp->forkattr & ATTR_CMNEXT_RELPATH)) {
  attrlist_pack_string(abp, relpathptr, relpathlen);
  abp->actual.forkattr |= ATTR_CMNEXT_RELPATH;
 }

 if (alp->forkattr & ATTR_CMNEXT_PRIVATESIZE) {
  if (VATTR_IS_SUPPORTED(vap, va_private_size)) {
   ATTR_PACK8((*abp), vap->va_private_size);
   abp->actual.forkattr |= ATTR_CMNEXT_PRIVATESIZE;
  } else if (!return_valid || pack_invalid) {
   uint64_t zero_val = 0;
   ATTR_PACK8((*abp), zero_val);
  }
 }

 if (alp->forkattr & ATTR_CMNEXT_LINKID) {
  uint64_t linkid;

  if (VATTR_IS_SUPPORTED(vap, va_linkid))
   linkid = vap->va_linkid;
  else
   linkid = vap->va_fileid;

  ATTR_PACK8((*abp), linkid);
  abp->actual.forkattr |= ATTR_CMNEXT_LINKID;
 }

 return 0;
}
