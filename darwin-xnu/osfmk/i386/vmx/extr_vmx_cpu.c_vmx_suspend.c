
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VMX_KPRINTF (char*) ;
 int vmx_off (int *) ;
 scalar_t__ vmx_use_count ;

void
vmx_suspend()
{
 VMX_KPRINTF("vmx_suspend\n");

 if (vmx_use_count)
  vmx_off(((void*)0));
}
