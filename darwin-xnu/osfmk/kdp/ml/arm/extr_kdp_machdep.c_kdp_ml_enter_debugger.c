
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
kdp_ml_enter_debugger(void)
{
 __asm__ volatile(".long 0xe7ffdefe");
}
