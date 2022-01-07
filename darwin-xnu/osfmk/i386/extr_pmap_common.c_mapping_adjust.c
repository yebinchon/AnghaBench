
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_continue_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int MAXPRI_KERNEL ;
 scalar_t__ kernel_thread_start_priority (int ,int *,int ,int *) ;
 scalar_t__ mapping_replenish ;
 int mapping_replenish_thread ;
 int panic (char*) ;
 int pmap_pagetable_corruption_log_setup () ;
 int thread_deallocate (int ) ;

void mapping_adjust(void) {
 kern_return_t mres;

 pmap_pagetable_corruption_log_setup();

 mres = kernel_thread_start_priority((thread_continue_t)mapping_replenish, ((void*)0), MAXPRI_KERNEL, &mapping_replenish_thread);
 if (mres != KERN_SUCCESS) {
  panic("pmap: mapping_replenish_thread creation failed");
 }
 thread_deallocate(mapping_replenish_thread);
}
