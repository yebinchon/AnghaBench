
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int kauth_cred_t ;
typedef int errno_t ;
typedef int daddr64_t ;
typedef int buf_t ;


 int BLK_READ ;
 int do_breadn_for_type (int ,int ,int,int *,int*,int,int ,int *,int ) ;

errno_t
buf_breadn(vnode_t vp, daddr64_t blkno, int size, daddr64_t *rablks, int *rasizes, int nrablks, kauth_cred_t cred, buf_t *bpp)
{
 return (do_breadn_for_type(vp, blkno, size, rablks, rasizes, nrablks, cred, bpp, BLK_READ));
}
