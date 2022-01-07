
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kprintf (char*,char const*) ;

void
kdp_panic(
    const char *msg
)
{
    kprintf("kdp panic: %s\n", msg);
    __asm__ volatile("hlt");
}
