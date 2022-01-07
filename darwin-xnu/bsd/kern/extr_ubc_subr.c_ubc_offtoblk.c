
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int off_t ;
typedef int daddr64_t ;


 scalar_t__ UBCINFOEXISTS (int ) ;
 int VNOP_OFFTOBLK (int ,int ,int*) ;

daddr64_t
ubc_offtoblk(vnode_t vp, off_t offset)
{
 daddr64_t blkno = -1;
 int error = 0;

 if (UBCINFOEXISTS(vp)) {
  error = VNOP_OFFTOBLK(vp, offset, &blkno);
  if (error)
   blkno = -1;
 }

 return (blkno);
}
