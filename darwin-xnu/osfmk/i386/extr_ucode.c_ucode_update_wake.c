
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_number () ;
 scalar_t__ global_update ;
 int kprintf (char*,int ) ;
 int update_microcode () ;

void
ucode_update_wake()
{
 if (global_update) {
  kprintf("ucode: Re-applying update after wake (CPU #%d)\n", cpu_number());
  update_microcode();




 }
}
