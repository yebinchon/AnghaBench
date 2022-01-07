
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int kauth_cred_t ;
typedef int errno_t ;
typedef int daddr64_t ;
typedef int buf_t ;


 int B_ASYNC ;
 int bio_doread (int ,int ,int,int ,int ,int) ;
 int buf_biowait (int ) ;
 scalar_t__ incore (int ,int ) ;

__attribute__((used)) static errno_t
do_breadn_for_type(vnode_t vp, daddr64_t blkno, int size, daddr64_t *rablks, int *rasizes,
     int nrablks, kauth_cred_t cred, buf_t *bpp, int queuetype)
{
 buf_t bp;
 int i;

 bp = *bpp = bio_doread(vp, blkno, size, cred, 0, queuetype);




 for (i = 0; i < nrablks; i++) {

  if (incore(vp, rablks[i]))
   continue;


  (void) bio_doread(vp, rablks[i], rasizes[i], cred, B_ASYNC, queuetype);
 }


 return (buf_biowait(bp));
}
