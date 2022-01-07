
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int kauth_cred_t ;
typedef int errno_t ;
typedef int daddr64_t ;
typedef int buf_t ;


 int BLK_META ;
 int bio_doread (int ,int ,int,int ,int ,int ) ;
 int buf_biowait (int ) ;

errno_t
buf_meta_bread(vnode_t vp, daddr64_t blkno, int size, kauth_cred_t cred, buf_t *bpp)
{
 buf_t bp;


 bp = *bpp = bio_doread(vp, blkno, size, cred, 0, BLK_META);


 return (buf_biowait(bp));
}
