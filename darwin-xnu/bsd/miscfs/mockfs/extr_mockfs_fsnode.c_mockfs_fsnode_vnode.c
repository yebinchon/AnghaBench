
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vnode_t ;
struct vnode_fsparam {char* vnfs_str; int vnfs_markroot; int vnfs_flags; int * vnfs_cnp; int vnfs_filesize; scalar_t__ vnfs_rdev; scalar_t__ vnfs_marksystem; int vnfs_vops; TYPE_4__* vnfs_fsnode; int * vnfs_dvp; int vnfs_vtype; TYPE_1__* vnfs_mp; } ;
typedef TYPE_3__* mockfs_mount_t ;
typedef TYPE_4__* mockfs_fsnode_t ;
typedef int memory_object_control_t ;
struct TYPE_9__ {scalar_t__ type; int vp; int size; TYPE_2__* parent; TYPE_1__* mnt; } ;
struct TYPE_8__ {int mockfs_memdev_base; int mockfs_mnt_mtx; scalar_t__ mockfs_memory_backed; } ;
struct TYPE_7__ {int * vp; } ;
struct TYPE_6__ {scalar_t__ mnt_data; } ;


 int EINVAL ;
 scalar_t__ MOCKFS_FILE ;
 scalar_t__ MOCKFS_ROOT ;
 int PAGE_SHIFT ;
 int VCREATESIZE ;
 int VDIR ;
 int VNCREATE_FLAVOR ;
 int VNFS_CANTCACHE ;
 int VNFS_NOCACHE ;
 int VREG ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int mockfs_vnodeop_p ;
 int pager_map_to_phys_contiguous (int ,int ,int,int ) ;
 int panic (char*,...) ;
 int ubc_getobject (int ,int ) ;
 int vnode_create (int ,int ,struct vnode_fsparam*,int *) ;
 int vnode_get (int ) ;

int mockfs_fsnode_vnode(mockfs_fsnode_t fsnp, vnode_t * vpp)
{
 int rvalue;
 memory_object_control_t ubc_mem_object;
 mockfs_mount_t mockfs_mnt;
 struct vnode_fsparam vnfs_param;

 if ((!fsnp) || (!vpp)) {
  rvalue = EINVAL;
  goto done;
 }

 mockfs_mnt = ((mockfs_mount_t) fsnp->mnt->mnt_data);
 lck_mtx_lock(&mockfs_mnt->mockfs_mnt_mtx);

 if (fsnp->vp) {



  rvalue = vnode_get(fsnp->vp);
  if (!rvalue) {
   *vpp = fsnp->vp;
  }
 }
 else {



  vnfs_param.vnfs_mp = fsnp->mnt;
  vnfs_param.vnfs_vtype = (fsnp->type == MOCKFS_FILE) ? VREG : VDIR;
  vnfs_param.vnfs_str = "mockfs";
  vnfs_param.vnfs_dvp = (fsnp->type == MOCKFS_ROOT) ? ((void*)0) : fsnp->parent->vp;
  vnfs_param.vnfs_fsnode = fsnp;
  vnfs_param.vnfs_vops = mockfs_vnodeop_p;
  vnfs_param.vnfs_markroot = (fsnp->type == MOCKFS_ROOT);
  vnfs_param.vnfs_marksystem = 0;
  vnfs_param.vnfs_rdev = 0;
  vnfs_param.vnfs_filesize = fsnp->size;
  vnfs_param.vnfs_cnp = ((void*)0);
  vnfs_param.vnfs_flags = VNFS_CANTCACHE | VNFS_NOCACHE;
  rvalue = vnode_create(VNCREATE_FLAVOR, VCREATESIZE, &vnfs_param, &fsnp->vp);

  if ((!rvalue) && (fsnp->type == MOCKFS_FILE) && (mockfs_mnt->mockfs_memory_backed)) {



   ubc_mem_object = ubc_getobject(fsnp->vp, 0);

   if (!ubc_mem_object)
    panic("mockfs_fsvnode failed to get ubc_mem_object for a new vnode");

   rvalue = pager_map_to_phys_contiguous(ubc_mem_object, 0, (mockfs_mnt->mockfs_memdev_base << PAGE_SHIFT), fsnp->size);

   if (rvalue)
    panic("mockfs_fsnode_vnode failed to create fictitious pages for a memory-backed device; rvalue = %d", rvalue);
  }

  if (!rvalue)
   *vpp = fsnp->vp;
 }

 lck_mtx_unlock(&mockfs_mnt->mockfs_mnt_mtx);

done:
 return rvalue;
}
