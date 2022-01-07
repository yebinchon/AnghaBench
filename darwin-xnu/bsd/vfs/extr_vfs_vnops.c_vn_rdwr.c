
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vnode {int dummy; } ;
typedef int proc_t ;
typedef int off_t ;
typedef int kauth_cred_t ;
typedef int int64_t ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef enum uio_rw { ____Placeholder_uio_rw } uio_rw ;
typedef scalar_t__ caddr_t ;


 int vn_rdwr_64 (int,struct vnode*,int ,int,int ,int,int,int ,int*,int ) ;

int
vn_rdwr(
 enum uio_rw rw,
 struct vnode *vp,
 caddr_t base,
 int len,
 off_t offset,
 enum uio_seg segflg,
 int ioflg,
 kauth_cred_t cred,
 int *aresid,
 proc_t p)
{
 int64_t resid;
 int result;

 result = vn_rdwr_64(rw,
   vp,
   (uint64_t)(uintptr_t)base,
   (int64_t)len,
   offset,
   segflg,
   ioflg,
   cred,
   &resid,
   p);


 if (aresid != ((void*)0)) {
  *aresid = resid;
 }

 return result;
}
