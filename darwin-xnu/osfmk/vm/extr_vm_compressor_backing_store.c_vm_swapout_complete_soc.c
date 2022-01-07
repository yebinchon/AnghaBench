
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swapout_io_completion {scalar_t__ swp_io_busy; scalar_t__ swp_io_done; int swp_c_size; int swp_f_offset; int swp_c_seg; scalar_t__ swp_io_error; int swp_swf; } ;
typedef int kern_return_t ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int c_list_lock ;
 int lck_mtx_lock_spin_always (int ) ;
 int lck_mtx_unlock_always (int ) ;
 int vm_swap_put_finish (int ,int *,scalar_t__) ;
 int vm_swapout_finish (int ,int ,int ,int ) ;
 int vm_swapout_soc_busy ;
 int vm_swapout_soc_done ;

__attribute__((used)) static void
vm_swapout_complete_soc(struct swapout_io_completion *soc)
{
        kern_return_t kr;

        if (soc->swp_io_error)
         kr = KERN_FAILURE;
 else
         kr = KERN_SUCCESS;

 lck_mtx_unlock_always(c_list_lock);

 vm_swap_put_finish(soc->swp_swf, &soc->swp_f_offset, soc->swp_io_error);
 vm_swapout_finish(soc->swp_c_seg, soc->swp_f_offset, soc->swp_c_size, kr);

 lck_mtx_lock_spin_always(c_list_lock);

 soc->swp_io_done = 0;
 soc->swp_io_busy = 0;

 vm_swapout_soc_busy--;
 vm_swapout_soc_done--;
}
