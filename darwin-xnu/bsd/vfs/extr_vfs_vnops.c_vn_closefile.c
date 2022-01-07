
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vnode {int dummy; } ;
struct flock {int l_type; int l_len; int l_start; int l_whence; } ;
struct fileglob {int fg_flag; int fg_lflags; struct vnode* fg_data; } ;
typedef int caddr_t ;


 scalar_t__ DTYPE_VNODE ;
 int FG_HAS_OFDLOCK ;
 int FHASLOCK ;
 scalar_t__ FILEGLOB_DTYPE (struct fileglob*) ;
 int F_FLOCK ;
 int F_OFD_LOCK ;
 int F_UNLCK ;
 int SEEK_SET ;
 int VNOP_ADVLOCK (struct vnode*,int ,int ,struct flock*,int ,int ,int *) ;
 int vn_close (struct vnode*,int,int ) ;
 int vnode_getwithref (struct vnode*) ;
 int vnode_put (struct vnode*) ;

__attribute__((used)) static int
vn_closefile(struct fileglob *fg, vfs_context_t ctx)
{
 struct vnode *vp = fg->fg_data;
 int error;

 if ( (error = vnode_getwithref(vp)) == 0 ) {
  if (FILEGLOB_DTYPE(fg) == DTYPE_VNODE &&
      ((fg->fg_flag & FHASLOCK) != 0 ||
      (fg->fg_lflags & FG_HAS_OFDLOCK) != 0)) {
   struct flock lf = {
    .l_whence = SEEK_SET,
    .l_start = 0,
    .l_len = 0,
    .l_type = F_UNLCK
   };

   if ((fg->fg_flag & FHASLOCK) != 0)
    (void) VNOP_ADVLOCK(vp, (caddr_t)fg,
        F_UNLCK, &lf, F_FLOCK, ctx, ((void*)0));

   if ((fg->fg_lflags & FG_HAS_OFDLOCK) != 0)
    (void) VNOP_ADVLOCK(vp, (caddr_t)fg,
        F_UNLCK, &lf, F_OFD_LOCK, ctx, ((void*)0));
  }
         error = vn_close(vp, fg->fg_flag, ctx);
  (void) vnode_put(vp);
 }
 return (error);
}
