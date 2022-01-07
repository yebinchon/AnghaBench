
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vnode_t ;
typedef int vm_prot_t ;
typedef int user_addr_t ;
typedef size_t uint32_t ;
struct vnode_attr {scalar_t__ va_uid; int va_access_time; } ;
struct vnode {scalar_t__ v_type; scalar_t__ v_mount; int v_flag; int v_name; } ;
struct vm_shared_region {int dummy; } ;
struct shared_file_mapping_np {int sfm_init_prot; int sfm_max_prot; int sfm_file_offset; int sfm_size; int sfm_address; } ;
struct proc {int p_flag; int p_comm; int p_pid; TYPE_1__* p_fd; } ;
struct fileproc {TYPE_2__* f_fglob; } ;
typedef int off_t ;
typedef int memory_object_size_t ;
typedef scalar_t__ memory_object_control_t ;
typedef int kern_return_t ;
struct TYPE_5__ {int fg_flag; scalar_t__ fg_data; } ;
struct TYPE_4__ {struct vnode* fd_rdir; } ;


 scalar_t__ DTYPE_VNODE ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 scalar_t__ FILEGLOB_DTYPE (TYPE_2__*) ;
 int FREAD ;





 int KERN_SUCCESS ;
 int MAP_FILE ;
 scalar_t__ MEMORY_OBJECT_CONTROL_NULL ;
 int MNT_NOATIME ;
 int OSBitAndAtomic (size_t,int*) ;
 int P_NOSHLIB ;
 int SHARED_REGION_TRACE_DEBUG (char*) ;
 int SHARED_REGION_TRACE_ERROR (char*) ;
 int UBC_HOLDOBJECT ;
 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_SET_ACTIVE (struct vnode_attr*,int ) ;
 int VATTR_WANTED (struct vnode_attr*,int ) ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct vnode*) ;
 int VM_PROT_ALL ;
 int VM_PROT_ZF ;
 scalar_t__ VREG ;
 int VSHARED_DYLD ;
 int cs_system_enforcement () ;
 int current_task () ;
 struct vnode* current_thread () ;
 int fp_drop (struct proc*,int,struct fileproc*,int ) ;
 int fp_lookup (struct proc*,int,struct fileproc**,int ) ;
 int mac_file_check_mmap (int ,TYPE_2__*,int ,int ,int ,int *) ;
 int nanotime (int *) ;
 struct vnode* rootvnode ;
 scalar_t__ scdir_enforce ;
 int scdir_path ;
 scalar_t__ ubc_cs_is_range_codesigned (struct vnode*,int ,int ) ;
 scalar_t__ ubc_getobject (struct vnode*,int ) ;
 int va_access_time ;
 int va_uid ;
 int vfs_context_current () ;
 int vfs_context_ucred (int ) ;
 int vm_shared_region_deallocate (struct vm_shared_region*) ;
 int vm_shared_region_map_file (struct vm_shared_region*,size_t,struct shared_file_mapping_np*,scalar_t__,int ,void*,size_t,int ,int ) ;
 struct vm_shared_region* vm_shared_region_trim_and_get (int ) ;
 int vnode_getattr (struct vnode*,struct vnode_attr*,int ) ;
 int vnode_getwithref (int ) ;
 int vnode_lock_spin (struct vnode*) ;
 int vnode_lookup (int ,int ,struct vnode**,int ) ;
 struct vnode* vnode_parent (struct vnode*) ;
 int vnode_put (struct vnode*) ;
 int vnode_setattr (struct vnode*,struct vnode_attr*,int ) ;
 int vnode_size (struct vnode*,int *,int ) ;
 int vnode_unlock (struct vnode*) ;
 int vnode_vfsvisflags (struct vnode*) ;

int
_shared_region_map_and_slide(
 struct proc *p,
 int fd,
 uint32_t mappings_count,
 struct shared_file_mapping_np *mappings,
 uint32_t slide,
 user_addr_t slide_start,
 user_addr_t slide_size)
{
 int error;
 kern_return_t kr;
 struct fileproc *fp;
 struct vnode *vp, *root_vp, *scdir_vp;
 struct vnode_attr va;
 off_t fs;
 memory_object_size_t file_size;



 memory_object_control_t file_control;
 struct vm_shared_region *shared_region;
 uint32_t i;

 SHARED_REGION_TRACE_DEBUG(
  ("shared_region: %p [%d(%s)] -> map\n",
   (void *)VM_KERNEL_ADDRPERM(current_thread()),
   p->p_pid, p->p_comm));

 shared_region = ((void*)0);
 fp = ((void*)0);
 vp = ((void*)0);
 scdir_vp = ((void*)0);


 error = fp_lookup(p, fd, &fp, 0);
 if (error) {
  SHARED_REGION_TRACE_ERROR(
   ("shared_region: %p [%d(%s)] map: "
    "fd=%d lookup failed (error=%d)\n",
    (void *)VM_KERNEL_ADDRPERM(current_thread()),
    p->p_pid, p->p_comm, fd, error));
  goto done;
 }


 if (FILEGLOB_DTYPE(fp->f_fglob) != DTYPE_VNODE) {
  SHARED_REGION_TRACE_ERROR(
   ("shared_region: %p [%d(%s)] map: "
    "fd=%d not a vnode (type=%d)\n",
    (void *)VM_KERNEL_ADDRPERM(current_thread()),
    p->p_pid, p->p_comm,
    fd, FILEGLOB_DTYPE(fp->f_fglob)));
  error = EINVAL;
  goto done;
 }


 if (! (fp->f_fglob->fg_flag & FREAD)) {
  SHARED_REGION_TRACE_ERROR(
   ("shared_region: %p [%d(%s)] map: "
    "fd=%d not readable\n",
    (void *)VM_KERNEL_ADDRPERM(current_thread()),
    p->p_pid, p->p_comm, fd));
  error = EPERM;
  goto done;
 }


 error = vnode_getwithref((vnode_t) fp->f_fglob->fg_data);
 if (error) {
  SHARED_REGION_TRACE_ERROR(
   ("shared_region: %p [%d(%s)] map: "
    "fd=%d getwithref failed (error=%d)\n",
    (void *)VM_KERNEL_ADDRPERM(current_thread()),
    p->p_pid, p->p_comm, fd, error));
  goto done;
 }
 vp = (struct vnode *) fp->f_fglob->fg_data;


 if (vp->v_type != VREG) {
  SHARED_REGION_TRACE_ERROR(
   ("shared_region: %p [%d(%s)] map(%p:'%s'): "
    "not a file (type=%d)\n",
    (void *)VM_KERNEL_ADDRPERM(current_thread()),
    p->p_pid, p->p_comm,
    (void *)VM_KERNEL_ADDRPERM(vp),
    vp->v_name, vp->v_type));
  error = EINVAL;
  goto done;
 }
 root_vp = p->p_fd->fd_rdir;
 if (root_vp == ((void*)0)) {
  root_vp = rootvnode;
 } else {



  error = EINVAL;
  goto done;
 }

 if (vp->v_mount != root_vp->v_mount) {
  SHARED_REGION_TRACE_ERROR(
   ("shared_region: %p [%d(%s)] map(%p:'%s'): "
    "not on process's root volume\n",
    (void *)VM_KERNEL_ADDRPERM(current_thread()),
    p->p_pid, p->p_comm,
    (void *)VM_KERNEL_ADDRPERM(vp), vp->v_name));
  error = EPERM;
  goto done;
 }


 VATTR_INIT(&va);
 VATTR_WANTED(&va, va_uid);
 error = vnode_getattr(vp, &va, vfs_context_current());
 if (error) {
  SHARED_REGION_TRACE_ERROR(
   ("shared_region: %p [%d(%s)] map(%p:'%s'): "
    "vnode_getattr(%p) failed (error=%d)\n",
    (void *)VM_KERNEL_ADDRPERM(current_thread()),
    p->p_pid, p->p_comm,
    (void *)VM_KERNEL_ADDRPERM(vp), vp->v_name,
    (void *)VM_KERNEL_ADDRPERM(vp), error));
  goto done;
 }
 if (va.va_uid != 0) {
  SHARED_REGION_TRACE_ERROR(
   ("shared_region: %p [%d(%s)] map(%p:'%s'): "
    "owned by uid=%d instead of 0\n",
    (void *)VM_KERNEL_ADDRPERM(current_thread()),
    p->p_pid, p->p_comm,
    (void *)VM_KERNEL_ADDRPERM(vp),
    vp->v_name, va.va_uid));
  error = EPERM;
  goto done;
 }

 if (scdir_enforce) {

  error = vnode_lookup(scdir_path, 0, &scdir_vp, vfs_context_current());
  if (error) {
   SHARED_REGION_TRACE_ERROR(
    ("shared_region: %p [%d(%s)] map(%p:'%s'): "
     "vnode_lookup(%s) failed (error=%d)\n",
     (void *)VM_KERNEL_ADDRPERM(current_thread()),
     p->p_pid, p->p_comm,
     (void *)VM_KERNEL_ADDRPERM(vp), vp->v_name,
     scdir_path, error));
   goto done;
  }


  if (vnode_parent(vp) != scdir_vp) {
   SHARED_REGION_TRACE_ERROR(
    ("shared_region: %p [%d(%s)] map(%p:'%s'): "
     "shared cache file not in %s\n",
     (void *)VM_KERNEL_ADDRPERM(current_thread()),
     p->p_pid, p->p_comm,
     (void *)VM_KERNEL_ADDRPERM(vp),
     vp->v_name, scdir_path));
   error = EPERM;
   goto done;
  }
 }


 error = vnode_size(vp, &fs, vfs_context_current());
 if (error) {
  SHARED_REGION_TRACE_ERROR(
   ("shared_region: %p [%d(%s)] map(%p:'%s'): "
    "vnode_size(%p) failed (error=%d)\n",
    (void *)VM_KERNEL_ADDRPERM(current_thread()),
    p->p_pid, p->p_comm,
    (void *)VM_KERNEL_ADDRPERM(vp), vp->v_name,
    (void *)VM_KERNEL_ADDRPERM(vp), error));
  goto done;
 }
 file_size = fs;


 file_control = ubc_getobject(vp, UBC_HOLDOBJECT);
 if (file_control == MEMORY_OBJECT_CONTROL_NULL) {
  SHARED_REGION_TRACE_ERROR(
   ("shared_region: %p [%d(%s)] map(%p:'%s'): "
    "no memory object\n",
    (void *)VM_KERNEL_ADDRPERM(current_thread()),
    p->p_pid, p->p_comm,
    (void *)VM_KERNEL_ADDRPERM(vp), vp->v_name));
  error = EINVAL;
  goto done;
 }


 if (!cs_system_enforcement()) {

 } else for (i = 0; i < mappings_count; i++) {
  if (mappings[i].sfm_init_prot & VM_PROT_ZF) {

   continue;
  }
  if (ubc_cs_is_range_codesigned(vp,
            mappings[i].sfm_file_offset,
            mappings[i].sfm_size)) {

   continue;
  }
  SHARED_REGION_TRACE_ERROR(
   ("shared_region: %p [%d(%s)] map(%p:'%s'): "
    "mapping #%d/%d [0x%llx:0x%llx:0x%llx:0x%x:0x%x] "
    "is not code-signed\n",
    (void *)VM_KERNEL_ADDRPERM(current_thread()),
    p->p_pid, p->p_comm,
    (void *)VM_KERNEL_ADDRPERM(vp), vp->v_name,
    i, mappings_count,
    mappings[i].sfm_address,
    mappings[i].sfm_size,
    mappings[i].sfm_file_offset,
    mappings[i].sfm_max_prot,
    mappings[i].sfm_init_prot));
  error = EINVAL;
  goto done;
 }


 shared_region = vm_shared_region_trim_and_get(current_task());
 if (shared_region == ((void*)0)) {
  SHARED_REGION_TRACE_ERROR(
   ("shared_region: %p [%d(%s)] map(%p:'%s'): "
    "no shared region\n",
    (void *)VM_KERNEL_ADDRPERM(current_thread()),
    p->p_pid, p->p_comm,
    (void *)VM_KERNEL_ADDRPERM(vp), vp->v_name));
  error = EINVAL;
  goto done;
 }


 kr = vm_shared_region_map_file(shared_region,
           mappings_count,
           mappings,
           file_control,
           file_size,
           (void *) p->p_fd->fd_rdir,
           slide,
           slide_start,
           slide_size);
 if (kr != KERN_SUCCESS) {
  SHARED_REGION_TRACE_ERROR(
   ("shared_region: %p [%d(%s)] map(%p:'%s'): "
    "vm_shared_region_map_file() failed kr=0x%x\n",
    (void *)VM_KERNEL_ADDRPERM(current_thread()),
    p->p_pid, p->p_comm,
    (void *)VM_KERNEL_ADDRPERM(vp), vp->v_name, kr));
  switch (kr) {
  case 131:
   error = EFAULT;
   break;
  case 128:
   error = EPERM;
   break;
  case 129:
   error = ENOMEM;
   break;
  case 132:
  case 130:
  default:
   error = EINVAL;
   break;
  }
  goto done;
 }

 error = 0;

 vnode_lock_spin(vp);

 vp->v_flag |= VSHARED_DYLD;

 vnode_unlock(vp);


 if (! (vnode_vfsvisflags(vp) & MNT_NOATIME)) {
  VATTR_INIT(&va);
  nanotime(&va.va_access_time);
  VATTR_SET_ACTIVE(&va, va_access_time);
  vnode_setattr(vp, &va, vfs_context_current());
 }

 if (p->p_flag & P_NOSHLIB) {

  OSBitAndAtomic(~((uint32_t)P_NOSHLIB), &p->p_flag);
 }

done:
 if (vp != ((void*)0)) {




  (void) vnode_put(vp);
  vp = ((void*)0);
 }
 if (fp != ((void*)0)) {

  fp_drop(p, fd, fp, 0);
  fp = ((void*)0);
 }
 if (scdir_vp != ((void*)0)) {
  (void)vnode_put(scdir_vp);
  scdir_vp = ((void*)0);
 }

 if (shared_region != ((void*)0)) {
  vm_shared_region_deallocate(shared_region);
 }

 SHARED_REGION_TRACE_DEBUG(
  ("shared_region: %p [%d(%s)] <- map\n",
   (void *)VM_KERNEL_ADDRPERM(current_thread()),
   p->p_pid, p->p_comm));

 return error;
}
