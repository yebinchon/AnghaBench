
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swapout_io_completion {int swp_io_done; int swp_io_error; } ;
typedef int event_t ;


 int c_list_lock ;
 int c_swapout_list_head ;
 int lck_mtx_lock_spin_always (int ) ;
 int lck_mtx_unlock_always (int ) ;
 int thread_wakeup (int ) ;
 int vm_swapout_soc_done ;

void
vm_swapout_iodone(void *io_context, int error)
{
        struct swapout_io_completion *soc;

 soc = (struct swapout_io_completion *)io_context;

 lck_mtx_lock_spin_always(c_list_lock);

 soc->swp_io_done = 1;
 soc->swp_io_error = error;
 vm_swapout_soc_done++;

 thread_wakeup((event_t)&c_swapout_list_head);

 lck_mtx_unlock_always(c_list_lock);
}
