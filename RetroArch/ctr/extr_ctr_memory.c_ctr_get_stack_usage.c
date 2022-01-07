
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ ctr_get_stack_free () ;

u32 ctr_get_stack_usage(void)
{
   extern u32 __stacksize__;
   u32 stack_free = ctr_get_stack_free();

   return __stacksize__ > stack_free? __stacksize__ - stack_free: 0;
}
