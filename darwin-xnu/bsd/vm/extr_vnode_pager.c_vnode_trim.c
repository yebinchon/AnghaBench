
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_int64_t ;
typedef int u_int32_t ;
struct vnode {TYPE_1__* v_mount; } ;
typedef scalar_t__ off_t ;
struct TYPE_6__ {int offset; size_t length; int extentsCount; struct TYPE_6__* extents; } ;
typedef TYPE_2__ dk_unmap_t ;
typedef TYPE_2__ dk_extent_t ;
typedef scalar_t__ daddr64_t ;
typedef int caddr_t ;
struct TYPE_5__ {struct vnode* mnt_devvp; } ;


 int DKIOCGETBLOCKSIZE ;
 int DKIOCUNMAP ;
 int VNODE_BLOCKMAP_NO_TRACK ;
 int VNODE_READ ;
 int VNOP_BLOCKMAP (struct vnode*,scalar_t__,size_t,scalar_t__*,size_t*,int *,int,int *) ;
 int VNOP_IOCTL (struct vnode*,int ,int ,int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int vfs_context_kernel () ;

u_int32_t vnode_trim (
  struct vnode *vp,
  off_t offset,
  size_t length)
{
 daddr64_t io_blockno;
 size_t io_bytecount;
 size_t trimmed = 0;
 off_t current_offset = offset;
 size_t remaining_length = length;
 int error = 0;
 u_int32_t blocksize = 0;
 struct vnode *devvp;
 dk_extent_t extent;
 dk_unmap_t unmap;



 devvp = vp->v_mount->mnt_devvp;


 error = VNOP_IOCTL(devvp, DKIOCGETBLOCKSIZE, (caddr_t)&blocksize, 0, vfs_context_kernel());
 if (error) {
  goto trim_exit;
 }






 while (trimmed < length) {






  error = VNOP_BLOCKMAP (vp, current_offset, remaining_length,
    &io_blockno, &io_bytecount, ((void*)0), VNODE_READ | VNODE_BLOCKMAP_NO_TRACK, ((void*)0));

  if (error) {
   goto trim_exit;
  }




  memset (&extent, 0, sizeof(dk_extent_t));
  memset (&unmap, 0, sizeof(dk_unmap_t));
  extent.offset = (uint64_t) io_blockno * (u_int64_t) blocksize;
  extent.length = io_bytecount;
  unmap.extents = &extent;
  unmap.extentsCount = 1;
  error = VNOP_IOCTL(devvp, DKIOCUNMAP, (caddr_t)&unmap, 0, vfs_context_kernel());

  if (error) {
   goto trim_exit;
  }
  remaining_length = remaining_length - io_bytecount;
  trimmed = trimmed + io_bytecount;
  current_offset = current_offset + io_bytecount;
 }
trim_exit:

 return error;

}
