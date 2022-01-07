
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct vnode_fsparam {char* vnfs_str; int vnfs_flags; scalar_t__ vnfs_markroot; scalar_t__ vnfs_marksystem; scalar_t__ vnfs_filesize; scalar_t__ vnfs_rdev; int vnfs_vops; int * vnfs_cnp; int * vnfs_fsnode; int * vnfs_dvp; int vnfs_vtype; struct mount* vnfs_mp; } ;
struct vfs_context {int vc_ucred; int vc_thread; } ;
struct mount {int dummy; } ;
typedef scalar_t__ dev_t ;
struct TYPE_11__ {int v_tag; int v_flag; } ;


 int BUF_WRITE_DATA ;
 int ENODEV ;
 int FREAD ;
 int FSCRED ;
 int MNT_WAIT ;
 scalar_t__ NODEV ;
 TYPE_1__* NULLVP ;
 int VBDEVVP ;
 int VBLK ;
 int VCREATESIZE ;
 int VNCREATE_FLAVOR ;
 int VNFS_CANTCACHE ;
 int VNFS_NOCACHE ;
 int VNOP_FSYNC (TYPE_1__*,int ,struct vfs_context*) ;
 int VNOP_OPEN (TYPE_1__*,int ,struct vfs_context*) ;
 int VT_NON ;
 int buf_invalidateblks (TYPE_1__*,int ,int ,int ) ;
 int current_thread () ;
 int panic (char*) ;
 int spec_vnodeop_p ;
 int vnode_create (int ,int ,struct vnode_fsparam*,TYPE_1__**) ;
 int vnode_lock_spin (TYPE_1__*) ;
 int vnode_ref (TYPE_1__*) ;
 int vnode_unlock (TYPE_1__*) ;

int
bdevvp(dev_t dev, vnode_t *vpp)
{
 vnode_t nvp;
 int error;
 struct vnode_fsparam vfsp;
 struct vfs_context context;

 if (dev == NODEV) {
  *vpp = NULLVP;
  return (ENODEV);
 }

 context.vc_thread = current_thread();
 context.vc_ucred = FSCRED;

 vfsp.vnfs_mp = (struct mount *)0;
 vfsp.vnfs_vtype = VBLK;
 vfsp.vnfs_str = "bdevvp";
 vfsp.vnfs_dvp = ((void*)0);
 vfsp.vnfs_fsnode = ((void*)0);
 vfsp.vnfs_cnp = ((void*)0);
 vfsp.vnfs_vops = spec_vnodeop_p;
 vfsp.vnfs_rdev = dev;
 vfsp.vnfs_filesize = 0;

 vfsp.vnfs_flags = VNFS_NOCACHE | VNFS_CANTCACHE;

 vfsp.vnfs_marksystem = 0;
 vfsp.vnfs_markroot = 0;

 if ( (error = vnode_create(VNCREATE_FLAVOR, VCREATESIZE, &vfsp, &nvp)) ) {
  *vpp = NULLVP;
  return (error);
 }
 vnode_lock_spin(nvp);
 nvp->v_flag |= VBDEVVP;
 nvp->v_tag = VT_NON;
 vnode_unlock(nvp);
 if ( (error = vnode_ref(nvp)) ) {
  panic("bdevvp failed: vnode_ref");
  return (error);
 }
 if ( (error = VNOP_FSYNC(nvp, MNT_WAIT, &context)) ) {
  panic("bdevvp failed: fsync");
  return (error);
 }
 if ( (error = buf_invalidateblks(nvp, BUF_WRITE_DATA, 0, 0)) ) {
  panic("bdevvp failed: invalidateblks");
  return (error);
 }
 if ( (error = VNOP_OPEN(nvp, FREAD, &context)) ) {
  panic("bdevvp failed: open");
  return (error);
 }
 *vpp = nvp;

 return (0);
}
