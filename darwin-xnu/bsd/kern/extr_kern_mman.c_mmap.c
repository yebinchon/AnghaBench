
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int vm_tag_t ;
typedef int vm_prot_t ;
typedef scalar_t__ vm_object_offset_t ;
typedef int vm_map_t ;
typedef scalar_t__ vm_map_size_t ;
typedef scalar_t__ vm_map_offset_t ;
struct TYPE_17__ {void* vmkf_map_jit; } ;
typedef TYPE_2__ vm_map_kernel_flags_t ;
typedef int vfs_context_t ;
typedef scalar_t__ user_size_t ;
typedef int user_addr_t ;
typedef int uint32_t ;
struct vnode_attr {int va_access_time; } ;
struct vnode {scalar_t__ v_type; } ;
struct mmap_args {int fd; int addr; int prot; int flags; scalar_t__ pos; scalar_t__ len; } ;
struct fileproc {TYPE_10__* f_fglob; } ;
typedef TYPE_3__* proc_t ;
typedef int off_t ;
typedef scalar_t__ memory_object_t ;
typedef int * memory_object_control_t ;
typedef int kern_return_t ;
typedef void* boolean_t ;
struct TYPE_18__ {TYPE_1__* p_vmspace; } ;
struct TYPE_16__ {scalar_t__ vm_daddr; } ;
struct TYPE_15__ {int fg_flag; scalar_t__ fg_data; } ;


 int ARG_VNODE1 ;
 int AUDIT_ARG (scalar_t__,...) ;
 int BSDDBG_CODE (int ,int ) ;
 int DBG_BSD_SC_EXTENDED_INFO ;
 int DBG_BSD_SC_EXTENDED_INFO2 ;
 int DBG_FUNC_NONE ;


 int EACCES ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EPERM ;
 void* FALSE ;
 int FILEGLOB_DTYPE (TYPE_10__*) ;
 int FREAD ;
 int FWRITE ;
 int IPC_PORT_NULL ;
 int KAUTH_VNODE_CHECKIMMUTABLE ;
 int KERNEL_DEBUG_CONSTANT (int,int,int,int,int,int ) ;




 int MAP_ANON ;
 int MAP_FIXED ;
 int MAP_JIT ;
 int MAP_NOCACHE ;
 int MAP_RESILIENT_CODESIGN ;
 int MAP_RESILIENT_MEDIA ;
 int MAP_SHARED ;
 scalar_t__ MAXDSIZ ;
 scalar_t__ MEMORY_OBJECT_NULL ;
 int MNT_NOATIME ;
 struct vnode* NULLVP ;
 scalar_t__ PAGE_SIZE_64 ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SYS_mmap ;
 void* TRUE ;
 int UBC_FLAGS_NONE ;
 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_SET_ACTIVE (struct vnode_attr*,int ) ;
 scalar_t__ VCHR ;
 int VM_FLAGS_4GB_CHUNK ;
 int VM_FLAGS_ALIAS_MASK ;
 int VM_FLAGS_ANYWHERE ;
 int VM_FLAGS_FIXED ;
 int VM_FLAGS_NO_CACHE ;
 int VM_FLAGS_OVERWRITE ;
 int VM_FLAGS_PURGABLE ;
 int VM_FLAGS_RESILIENT_CODESIGN ;
 int VM_FLAGS_SUPERPAGE_MASK ;
 int VM_GET_FLAGS_ALIAS (int,int ) ;
 int VM_INHERIT_DEFAULT ;
 int VM_INHERIT_SHARE ;
 int VM_KERN_MEMORY_NONE ;
 TYPE_2__ VM_MAP_KERNEL_FLAGS_NONE ;
 int VM_PROT_ALL ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 scalar_t__ VREG ;
 scalar_t__ VSTR ;
 scalar_t__ addr ;
 int assert (int) ;
 int current_map () ;
 int current_thread () ;
 int fp_drop (TYPE_3__*,int,struct fileproc*,int ) ;
 int fp_lookup (TYPE_3__*,int,struct fileproc**,int ) ;
 int len ;
 int mac_file_check_mmap (int ,TYPE_10__*,int,int,scalar_t__,int*) ;
 int mac_proc_check_map_anon (TYPE_3__*,scalar_t__,scalar_t__,int,int,int*) ;
 int memory_object_deallocate (scalar_t__) ;
 int nanotime (int *) ;
 scalar_t__ os_add_overflow (scalar_t__,scalar_t__,scalar_t__*) ;
 int pshm_mmap (TYPE_3__*,struct mmap_args*,int*,struct fileproc*,int ) ;
 int * swapfile_pager_control (scalar_t__) ;
 scalar_t__ swapfile_pager_setup (struct vnode*) ;
 int * ubc_getobject (struct vnode*,int ) ;
 int ubc_setthreadcred (struct vnode*,TYPE_3__*,int ) ;
 int va_access_time ;
 int vfs_context_current () ;
 int vfs_context_ucred (int ) ;
 int vm_map_enter_mem_object (int ,scalar_t__*,scalar_t__,int ,int,TYPE_2__,int ,int ,int ,void*,int,int,int ) ;
 int vm_map_enter_mem_object_control (int ,scalar_t__*,scalar_t__,int ,int,TYPE_2__,int ,int *,scalar_t__,void*,int,int,int ) ;
 scalar_t__ vm_map_page_mask (int ) ;
 scalar_t__ vm_map_page_size (int ) ;
 scalar_t__ vm_map_round_page (scalar_t__,scalar_t__) ;
 scalar_t__ vm_map_trunc_page (scalar_t__,scalar_t__) ;
 int vnode_authorize (struct vnode*,int *,int ,int ) ;
 int vnode_getwithref (struct vnode*) ;
 scalar_t__ vnode_isswap (struct vnode*) ;
 int vnode_put (struct vnode*) ;
 int vnode_setattr (struct vnode*,struct vnode_attr*,int ) ;
 int vnode_vfsvisflags (struct vnode*) ;
 int vnpath ;

int
mmap(proc_t p, struct mmap_args *uap, user_addr_t *retval)
{



 struct fileproc *fp;
 struct vnode *vp;
 int flags;
 int prot;
 int err=0;
 vm_map_t user_map;
 kern_return_t result;
 vm_map_offset_t user_addr;
 vm_map_size_t user_size;
 vm_object_offset_t pageoff;
 vm_object_offset_t file_pos;
 int alloc_flags = 0;
 vm_tag_t tag = VM_KERN_MEMORY_NONE;
 vm_map_kernel_flags_t vmk_flags = VM_MAP_KERNEL_FLAGS_NONE;
 boolean_t docow;
 vm_prot_t maxprot;
 void *handle;
 memory_object_t pager = MEMORY_OBJECT_NULL;
 memory_object_control_t control;
 int mapanon=0;
 int fpref=0;
 int error =0;
 int fd = uap->fd;
 int num_retries = 0;
 user_map = current_map();
 user_addr = (vm_map_offset_t)uap->addr;
 user_size = (vm_map_size_t) uap->len;

 AUDIT_ARG(addr, user_addr);
 AUDIT_ARG(len, user_size);
 AUDIT_ARG(fd, uap->fd);

 prot = (uap->prot & VM_PROT_ALL);







 if (prot & (VM_PROT_EXECUTE | VM_PROT_WRITE))
  prot |= VM_PROT_READ;


 flags = uap->flags;
 vp = NULLVP;






 file_pos = (vm_object_offset_t)uap->pos;



 if (file_pos + user_size > (vm_object_offset_t)-PAGE_SIZE_64)
  return (EINVAL);





 pageoff = (file_pos & vm_map_page_mask(user_map));
 file_pos -= (vm_object_offset_t)pageoff;



 user_size += pageoff;
 user_size = vm_map_round_page(user_size,
          vm_map_page_mask(user_map));

 if (flags & MAP_JIT) {
  if ((flags & MAP_FIXED) ||
      (flags & MAP_SHARED) ||
      !(flags & MAP_ANON) ||
      (flags & MAP_RESILIENT_CODESIGN) ||
      (flags & MAP_RESILIENT_MEDIA)) {
   return EINVAL;
  }
 }

 if ((flags & MAP_RESILIENT_CODESIGN) ||
     (flags & MAP_RESILIENT_MEDIA)) {
  if ((flags & MAP_ANON) ||
      (flags & MAP_JIT)) {
   return EINVAL;
  }
  if (prot & (VM_PROT_WRITE | VM_PROT_EXECUTE)) {
   return EPERM;
  }
 }





 if (flags & MAP_FIXED) {





  user_addr -= pageoff;
  if (user_addr & vm_map_page_mask(user_map))
   return (EINVAL);
 }
 alloc_flags = 0;

 if (flags & MAP_ANON) {

  maxprot = VM_PROT_ALL;
  if (fd != -1) {




   alloc_flags = fd & (VM_FLAGS_ALIAS_MASK |
         VM_FLAGS_SUPERPAGE_MASK |
         VM_FLAGS_PURGABLE |
         VM_FLAGS_4GB_CHUNK);
   if (alloc_flags != fd) {

    return EINVAL;
   }
   VM_GET_FLAGS_ALIAS(alloc_flags, tag);
   alloc_flags &= ~VM_FLAGS_ALIAS_MASK;
  }

  handle = ((void*)0);
  file_pos = 0;
  mapanon = 1;
 } else {
  struct vnode_attr va;
  vfs_context_t ctx = vfs_context_current();

  if (flags & MAP_JIT)
   return EINVAL;





  err = fp_lookup(p, fd, &fp, 0);
  if (err)
   return(err);
  fpref = 1;
  switch (FILEGLOB_DTYPE(fp->f_fglob)) {
  case 133:
   uap->addr = (user_addr_t)user_addr;
   uap->len = (user_size_t)user_size;
   uap->prot = prot;
   uap->flags = flags;
   uap->pos = file_pos;
   error = pshm_mmap(p, uap, retval, fp, (off_t)pageoff);
   goto bad;
  case 132:
   break;
  default:
   error = EINVAL;
   goto bad;
  }
  vp = (struct vnode *)fp->f_fglob->fg_data;
  error = vnode_getwithref(vp);
  if(error != 0)
   goto bad;

  if (vp->v_type != VREG && vp->v_type != VCHR) {
   (void)vnode_put(vp);
   error = EINVAL;
   goto bad;
  }

  AUDIT_ARG(vnpath, vp, ARG_VNODE1);




  if ((vnode_vfsvisflags(vp) & MNT_NOATIME) == 0) {
   VATTR_INIT(&va);
   nanotime(&va.va_access_time);
   VATTR_SET_ACTIVE(&va, va_access_time);
   vnode_setattr(vp, &va, ctx);
  }





  if (vp->v_type == VCHR || vp->v_type == VSTR) {
   (void)vnode_put(vp);
   error = ENODEV;
   goto bad;
  } else {
   maxprot = VM_PROT_EXECUTE;
   if (fp->f_fglob->fg_flag & FREAD)
    maxprot |= VM_PROT_READ;
   else if (prot & PROT_READ) {
    (void)vnode_put(vp);
    error = EACCES;
    goto bad;
   }
   if ((flags & MAP_SHARED) != 0) {
    if ((fp->f_fglob->fg_flag & FWRITE) != 0 &&




        !vnode_isswap(vp)) {






      error = vnode_authorize(vp, ((void*)0), KAUTH_VNODE_CHECKIMMUTABLE, ctx);


      if ((prot & PROT_WRITE) && (error != 0)) {
       vnode_put(vp);
        goto bad;
       }


      if (error == 0)
        maxprot |= VM_PROT_WRITE;

    } else if ((prot & PROT_WRITE) != 0) {
     (void)vnode_put(vp);
     error = EACCES;
     goto bad;
    }
   } else
    maxprot |= VM_PROT_WRITE;

   handle = (void *)vp;
  }
 }

 if (user_size == 0) {
  if (!mapanon)
   (void)vnode_put(vp);
  error = 0;
  goto bad;
 }





 user_size = vm_map_round_page(user_size,
          vm_map_page_mask(user_map));

 if (file_pos & vm_map_page_mask(user_map)) {
  if (!mapanon)
   (void)vnode_put(vp);
  error = EINVAL;
  goto bad;
 }

 if ((flags & MAP_FIXED) == 0) {
  alloc_flags |= VM_FLAGS_ANYWHERE;
  user_addr = vm_map_round_page(user_addr,
           vm_map_page_mask(user_map));
 } else {
  if (user_addr != vm_map_trunc_page(user_addr,
         vm_map_page_mask(user_map))) {
          if (!mapanon)
           (void)vnode_put(vp);
   error = EINVAL;
   goto bad;
  }
  alloc_flags |= VM_FLAGS_FIXED | VM_FLAGS_OVERWRITE;
 }

 if (flags & MAP_NOCACHE)
  alloc_flags |= VM_FLAGS_NO_CACHE;

 if (flags & MAP_JIT) {
  vmk_flags.vmkf_map_jit = TRUE;
 }

 if (flags & MAP_RESILIENT_CODESIGN) {
  alloc_flags |= VM_FLAGS_RESILIENT_CODESIGN;
 }




 if (handle == ((void*)0)) {
  control = ((void*)0);
  if (prot & (VM_PROT_EXECUTE | VM_PROT_WRITE))
   prot |= VM_PROT_READ;
  if (maxprot & (VM_PROT_EXECUTE | VM_PROT_WRITE))
   maxprot |= VM_PROT_READ;

map_anon_retry:
  result = vm_map_enter_mem_object(user_map,
       &user_addr, user_size,
       0, alloc_flags, vmk_flags,
       tag,
       IPC_PORT_NULL, 0, FALSE,
       prot, maxprot,
       (flags & MAP_SHARED) ?
       VM_INHERIT_SHARE :
       VM_INHERIT_DEFAULT);






  if ((result == 130) && ((flags & MAP_FIXED) == 0) && user_addr && (num_retries++ == 0)) {
   user_addr = vm_map_page_size(user_map);
   goto map_anon_retry;
  }
 } else {
  if (vnode_isswap(vp)) {




   control = ((void*)0);
   pager = swapfile_pager_setup(vp);
   if (pager != MEMORY_OBJECT_NULL) {
    control = swapfile_pager_control(pager);
   }
  } else {
   control = ubc_getobject(vp, UBC_FLAGS_NONE);
  }

  if (control == ((void*)0)) {
   (void)vnode_put(vp);
   error = ENOMEM;
   goto bad;
  }
  ubc_setthreadcred(vp, p, current_thread());
  docow = FALSE;
  if ((flags & (MAP_ANON|MAP_SHARED)) == 0) {
   docow = TRUE;
  }
  if (prot & (VM_PROT_EXECUTE | VM_PROT_WRITE))
   prot |= VM_PROT_READ;
  if (maxprot & (VM_PROT_EXECUTE | VM_PROT_WRITE))
   maxprot |= VM_PROT_READ;


map_file_retry:
  if ((flags & MAP_RESILIENT_CODESIGN) ||
      (flags & MAP_RESILIENT_MEDIA)) {
   if (prot & (VM_PROT_WRITE | VM_PROT_EXECUTE)) {
    assert(!mapanon);
    vnode_put(vp);
    error = EPERM;
    goto bad;
   }

   maxprot &= prot;
  }

  vm_object_offset_t end_pos = 0;
  if (os_add_overflow(user_size, file_pos, &end_pos)) {
   vnode_put(vp);
   error = EINVAL;
   goto bad;
  }

  result = vm_map_enter_mem_object_control(user_map,
       &user_addr, user_size,
       0, alloc_flags, vmk_flags,
       tag,
       control, file_pos,
       docow, prot, maxprot,
       (flags & MAP_SHARED) ?
       VM_INHERIT_SHARE :
       VM_INHERIT_DEFAULT);






  if ((result == 130) && ((flags & MAP_FIXED) == 0) && user_addr && (num_retries++ == 0)) {
   user_addr = vm_map_page_size(user_map);
   goto map_file_retry;
  }
 }

 if (!mapanon) {
  (void)vnode_put(vp);
 }

 switch (result) {
 case 128:
  *retval = user_addr + pageoff;
  error = 0;
  break;
 case 131:
 case 130:
  error = ENOMEM;
  break;
 case 129:
  error = EACCES;
  break;
 default:
  error = EINVAL;
  break;
 }
bad:
 if (pager != MEMORY_OBJECT_NULL) {





  memory_object_deallocate(pager);
 }
 if (fpref)
  fp_drop(p, fd, fp, 0);

 KERNEL_DEBUG_CONSTANT((BSDDBG_CODE(DBG_BSD_SC_EXTENDED_INFO, SYS_mmap) | DBG_FUNC_NONE), fd, (uint32_t)(*retval), (uint32_t)user_size, error, 0);

 KERNEL_DEBUG_CONSTANT((BSDDBG_CODE(DBG_BSD_SC_EXTENDED_INFO2, SYS_mmap) | DBG_FUNC_NONE), (uint32_t)(*retval >> 32), (uint32_t)(user_size >> 32),
         (uint32_t)(file_pos >> 32), (uint32_t)file_pos, 0);

 return(error);
}
