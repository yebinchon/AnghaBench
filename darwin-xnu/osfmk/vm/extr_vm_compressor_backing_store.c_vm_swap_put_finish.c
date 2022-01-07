
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct swapfile {scalar_t__ swp_io_count; int swp_flags; } ;
typedef int kern_return_t ;
typedef int event_t ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int SWAP_WANTED ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int thread_wakeup (int ) ;
 int vm_swap_data_lock ;
 int vm_swap_free (int ) ;
 int vm_swap_put_failures ;

kern_return_t
vm_swap_put_finish(struct swapfile *swf, uint64_t *f_offset, int error)
{
 lck_mtx_lock(&vm_swap_data_lock);

 swf->swp_io_count--;

 if ((swf->swp_flags & SWAP_WANTED) && swf->swp_io_count == 0) {

  swf->swp_flags &= ~SWAP_WANTED;
  thread_wakeup((event_t) &swf->swp_flags);
 }
 lck_mtx_unlock(&vm_swap_data_lock);

 if (error) {
  vm_swap_free(*f_offset);
  vm_swap_put_failures++;

  return KERN_FAILURE;
 }
 return KERN_SUCCESS;
}
