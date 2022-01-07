
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int off_t ;
typedef int daddr64_t ;


 scalar_t__ UBCINFOEXISTS (int ) ;
 int VNOP_BLKTOOFF (int ,int ,int*) ;

off_t
ubc_blktooff(vnode_t vp, daddr64_t blkno)
{
 off_t file_offset = -1;
 int error;

 if (UBCINFOEXISTS(vp)) {
  error = VNOP_BLKTOOFF(vp, blkno, &file_offset);
  if (error)
   file_offset = -1;
 }

 return (file_offset);
}
