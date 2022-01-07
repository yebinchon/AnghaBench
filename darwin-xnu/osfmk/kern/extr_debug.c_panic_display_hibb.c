
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int paniclog_append_noflush (char*,void*) ;
 scalar_t__ vm_hib_base ;

void
panic_display_hibb(void) {

 paniclog_append_noflush("__HIB  text base: %p\n", (void *) vm_hib_base);

}
