
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x86_saved_state_t ;
typedef int UInt32 ;


 int FALSE ;
 int OSCompareAndSwap (int ,int ,int volatile*) ;
 int PANIC_DOUBLE_FAULT ;
 scalar_t__ cpu_number () ;
 int panic_64 (int *,int ,char*,int ) ;
 int panic_double_fault_cpu ;

void
panic_double_fault64(x86_saved_state_t *sp)
{
 (void)OSCompareAndSwap((UInt32) -1, (UInt32) cpu_number(), (volatile UInt32 *)&panic_double_fault_cpu);
 panic_64(sp, PANIC_DOUBLE_FAULT, "Double fault", FALSE);

}
