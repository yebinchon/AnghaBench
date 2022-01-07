
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 scalar_t__ TRUE ;
 int assert (int) ;
 int backtrace_frame (uintptr_t*,int,void*) ;
 scalar_t__ interrupted_kernel_pc_fp (uintptr_t*,uintptr_t*) ;
 scalar_t__ ml_at_interrupt_context () ;

uint32_t
backtrace_interrupted(uintptr_t *bt, uint32_t max_frames)
{
 uintptr_t pc;
 uintptr_t fp;
 kern_return_t kr;

 assert(bt != ((void*)0));
 assert(max_frames > 0);
 assert(ml_at_interrupt_context() == TRUE);

 kr = interrupted_kernel_pc_fp(&pc, &fp);
 if (kr != KERN_SUCCESS) {
  return 0;
 }

 bt[0] = pc;
 if (max_frames == 1) {
  return 1;
 }

 return backtrace_frame(bt + 1, max_frames - 1, (void *)fp) + 1;
}
