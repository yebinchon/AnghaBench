
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int paniclog_append_noflush (char*,void*) ;
 scalar_t__ vm_kernel_slide ;
 scalar_t__ vm_kernel_stext ;

void
panic_display_kernel_aslr(void) {
 if (vm_kernel_slide) {
  paniclog_append_noflush("Kernel slide:     0x%016lx\n", (unsigned long) vm_kernel_slide);
  paniclog_append_noflush("Kernel text base: %p\n", (void *) vm_kernel_stext);
 }
}
