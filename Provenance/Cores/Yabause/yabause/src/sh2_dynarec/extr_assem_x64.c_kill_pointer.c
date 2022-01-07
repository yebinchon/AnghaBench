
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



void *kill_pointer(void *stub)
{
  u32 i_ptr=*((u32 *)(stub+6));
  *((u32 *)i_ptr)=(u32)stub-(u32)i_ptr-4;
  return (void *)i_ptr;
}
