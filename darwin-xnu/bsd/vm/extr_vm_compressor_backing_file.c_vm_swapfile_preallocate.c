
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int * vfs_context_t ;
typedef scalar_t__ uint64_t ;
struct vnode_attr {int dummy; } ;
typedef int off_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_9__ {int v_flag; } ;


 scalar_t__ FALSE ;
 int FIOPINSWAP ;
 int IO_NOZEROFILL ;
 int PROTECTION_CLASS_C ;
 int SET (int ,int ) ;
 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_SET (struct vnode_attr*,int ,int ) ;
 int VNOP_IOCTL (TYPE_1__*,int ,int *,int ,int *) ;
 int VNOP_SETATTR (TYPE_1__*,struct vnode_attr*,int *) ;
 int VSWAP ;
 int assert (int) ;
 int printf (char*,int,...) ;
 int va_dataprotect_class ;
 int * vfs_context_kernel () ;
 int vnode_lock_spin (TYPE_1__*) ;
 int vnode_setsize (TYPE_1__*,scalar_t__,int ,int *) ;
 int vnode_size (TYPE_1__*,int *,int *) ;
 int vnode_unlock (TYPE_1__*) ;

int
vm_swapfile_preallocate(vnode_t vp, uint64_t *size, boolean_t *pin)
{
 int error = 0;
 uint64_t file_size = 0;
 vfs_context_t ctx = ((void*)0);




 ctx = vfs_context_kernel();

 error = vnode_setsize(vp, *size, IO_NOZEROFILL, ctx);

 if (error) {
  printf("vnode_setsize for swap files failed: %d\n", error);
  goto done;
 }

 error = vnode_size(vp, (off_t*) &file_size, ctx);

 if (error) {
  printf("vnode_size (new file) for swap file failed: %d\n", error);
  goto done;
 }
 assert(file_size == *size);

 if (pin != ((void*)0) && *pin != FALSE) {
  error = VNOP_IOCTL(vp, FIOPINSWAP, ((void*)0), 0, ctx);

  if (error) {
   printf("pin for swap files failed: %d,  file_size = %lld\n", error, file_size);

   *pin = FALSE;
   error = 0;
  }
 }

 vnode_lock_spin(vp);
 SET(vp->v_flag, VSWAP);
 vnode_unlock(vp);
done:
 return error;
}
