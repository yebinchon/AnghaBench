
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 uintptr_t VM_MAX_KERNEL_ADDRESS ;
 uintptr_t VM_MIN_KERNEL_AND_KEXT_ADDRESS ;

void
dtrace_toxic_ranges(void (*func)(uintptr_t base, uintptr_t limit))
{




 func(0x0, VM_MIN_KERNEL_AND_KEXT_ADDRESS);
 if (VM_MAX_KERNEL_ADDRESS < ~(uintptr_t)0)
   func(VM_MAX_KERNEL_ADDRESS + 1, ~(uintptr_t)0);
}
