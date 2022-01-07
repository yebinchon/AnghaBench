
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vnode_attr {int va_fsid; int va_fsid64; } ;


 scalar_t__ VATTR_IS_SUPPORTED (struct vnode_attr*,int ) ;
 int va_fsid64 ;

__attribute__((used)) static uint64_t get_va_fsid(struct vnode_attr *vap)
{
 if (VATTR_IS_SUPPORTED(vap, va_fsid64)) {
  return *(uint64_t *)&vap->va_fsid64;
 } else {
  return vap->va_fsid;
 }
}
