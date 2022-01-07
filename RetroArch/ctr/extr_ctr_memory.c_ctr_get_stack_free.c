
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ u32 ;



u32 ctr_get_stack_free(void)
{
   extern u32 __stack_bottom;

   uint32_t* stack_bottom_current = (u32*)__stack_bottom;
   while(*stack_bottom_current++ == 0xFCFCFCFC);
   stack_bottom_current--;

   return ((u32)stack_bottom_current - __stack_bottom);
}
