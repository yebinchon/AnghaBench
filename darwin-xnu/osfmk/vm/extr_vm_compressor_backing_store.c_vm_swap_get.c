
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct swapfile {int swp_flags; scalar_t__ swp_io_count; int swp_vp; } ;
typedef int kern_return_t ;
typedef int event_t ;
typedef TYPE_2__* c_segment_t ;
struct TYPE_6__ {scalar_t__ c_buffer; } ;
struct TYPE_7__ {TYPE_1__ c_store; } ;


 int C_SEG_MAKE_WRITEABLE (TYPE_2__*) ;
 int C_SEG_WRITE_PROTECT (TYPE_2__*) ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int PAGE_SHIFT ;
 int PAGE_SIZE_64 ;
 int SWAP_READ ;
 int SWAP_READY ;
 int SWAP_RECLAIM ;
 int SWAP_SLOT_MASK ;
 int SWAP_WANTED ;
 int VM_STAT_INCR_BY (int ,int) ;
 int assert (scalar_t__) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int swapins ;
 int thread_wakeup (int ) ;
 int vm_swap_data_lock ;
 int vm_swap_free (int) ;
 int vm_swap_get_failures ;
 struct swapfile* vm_swapfile_for_handle (int) ;
 int vm_swapfile_io (int ,int,int,int,int ,int *) ;

kern_return_t
vm_swap_get(c_segment_t c_seg, uint64_t f_offset, uint64_t size)
{
 struct swapfile *swf = ((void*)0);
 uint64_t file_offset = 0;
 int retval = 0;

 assert(c_seg->c_store.c_buffer);

 lck_mtx_lock(&vm_swap_data_lock);

 swf = vm_swapfile_for_handle(f_offset);

 if (swf == ((void*)0) || ( !(swf->swp_flags & SWAP_READY) && !(swf->swp_flags & SWAP_RECLAIM))) {
  retval = 1;
  goto done;
 }
 swf->swp_io_count++;

 lck_mtx_unlock(&vm_swap_data_lock);




 file_offset = (f_offset & SWAP_SLOT_MASK);
 retval = vm_swapfile_io(swf->swp_vp, file_offset, (uint64_t)c_seg->c_store.c_buffer, (int)(size / PAGE_SIZE_64), SWAP_READ, ((void*)0));




 if (retval == 0)
  VM_STAT_INCR_BY(swapins, size >> PAGE_SHIFT);
 else
  vm_swap_get_failures++;




 vm_swap_free(f_offset);

 lck_mtx_lock(&vm_swap_data_lock);
 swf->swp_io_count--;

 if ((swf->swp_flags & SWAP_WANTED) && swf->swp_io_count == 0) {

  swf->swp_flags &= ~SWAP_WANTED;
  thread_wakeup((event_t) &swf->swp_flags);
 }
done:
 lck_mtx_unlock(&vm_swap_data_lock);

 if (retval == 0)
  return KERN_SUCCESS;
 else
  return KERN_FAILURE;
}
