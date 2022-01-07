
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int upl_t ;
typedef int upl_page_info_t ;
typedef scalar_t__ uint32_t ;
typedef int ubc_setsize_opts_t ;
struct vnode {struct ubc_info* v_ubcinfo; } ;
struct ubc_info {scalar_t__ ui_size; int ui_control; } ;
typedef scalar_t__ off_t ;
typedef int memory_object_size_t ;
typedef int memory_object_offset_t ;
typedef int memory_object_control_t ;
typedef scalar_t__ kern_return_t ;
typedef int errno_t ;


 int EAGAIN ;
 int EINVAL ;
 int ENOENT ;
 scalar_t__ ISSET (int ,int ) ;
 scalar_t__ KERN_SUCCESS ;
 int MEMORY_OBJECT_DATA_FLUSH ;
 int MEMORY_OBJECT_DATA_FLUSH_ALL ;
 int MEMORY_OBJECT_RETURN_NONE ;
 int NOTE_EXTEND ;
 scalar_t__ PAGE_MASK_64 ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ PAGE_SIZE_64 ;
 int UBCINFOEXISTS (struct vnode*) ;
 int UBC_SETSIZE_NO_FS_REENTRY ;
 int UPL_ABORT_FREE_ON_EMPTY ;
 int UPL_SET_LITE ;
 int VM_KERN_MEMORY_FILE ;
 int VM_PROT_NO_CHANGE ;
 int assert (int ) ;
 int cluster_zero (int ,scalar_t__,scalar_t__,int *) ;
 int lock_vnode_and_post (struct vnode*,int ) ;
 int mach_to_bsd_errno (scalar_t__) ;
 scalar_t__ memory_object_lock_request (int ,int ,int ,int *,int *,int ,int,int ) ;
 int panic (char*,scalar_t__) ;
 int printf (char*,scalar_t__) ;
 scalar_t__ round_page_64 (scalar_t__) ;
 scalar_t__ trunc_page_64 (scalar_t__) ;
 scalar_t__ ubc_create_upl_kernel (struct vnode*,scalar_t__,scalar_t__,int *,int **,int ,int ) ;
 int ubc_upl_abort_range (int ,int ,scalar_t__,int ) ;
 scalar_t__ upl_valid_page (int *,int ) ;

errno_t ubc_setsize_ex(struct vnode *vp, off_t nsize, ubc_setsize_opts_t opts)
{
 off_t osize;
 off_t lastpg, olastpgend, lastoff;
 struct ubc_info *uip;
 memory_object_control_t control;
 kern_return_t kret = KERN_SUCCESS;

 if (nsize < (off_t)0)
  return EINVAL;

 if (!UBCINFOEXISTS(vp))
  return ENOENT;

 uip = vp->v_ubcinfo;
 osize = uip->ui_size;

 if (ISSET(opts, UBC_SETSIZE_NO_FS_REENTRY) && nsize < osize)
  return EAGAIN;




 uip->ui_size = nsize;

 if (nsize >= osize) {
  if (nsize > osize) {
   lock_vnode_and_post(vp, NOTE_EXTEND);
  }

  return 0;
 }







 lastpg = trunc_page_64(nsize);
 olastpgend = round_page_64(osize);
 control = uip->ui_control;
 assert(control);
 lastoff = (nsize & PAGE_MASK_64);

 if (lastoff) {
  upl_t upl;
  upl_page_info_t *pl;






  kret = ubc_create_upl_kernel(vp, lastpg, PAGE_SIZE, &upl, &pl, UPL_SET_LITE, VM_KERN_MEMORY_FILE);

  if (kret != KERN_SUCCESS)
          panic("ubc_setsize: ubc_create_upl (error = %d)\n", kret);

  if (upl_valid_page(pl, 0))
          cluster_zero(upl, (uint32_t)lastoff, PAGE_SIZE - (uint32_t)lastoff, ((void*)0));

  ubc_upl_abort_range(upl, 0, PAGE_SIZE, UPL_ABORT_FREE_ON_EMPTY);

  lastpg += PAGE_SIZE_64;
 }
 if (olastpgend > lastpg) {
  int flags;

  if (lastpg == 0)
   flags = MEMORY_OBJECT_DATA_FLUSH_ALL;
  else
   flags = MEMORY_OBJECT_DATA_FLUSH;




  kret = memory_object_lock_request(control,
            (memory_object_offset_t)lastpg,
            (memory_object_size_t)(olastpgend - lastpg), ((void*)0), ((void*)0),
            MEMORY_OBJECT_RETURN_NONE, flags, VM_PROT_NO_CHANGE);
  if (kret != KERN_SUCCESS)
          printf("ubc_setsize: invalidate failed (error = %d)\n", kret);
 }
 return mach_to_bsd_errno(kret);
}
