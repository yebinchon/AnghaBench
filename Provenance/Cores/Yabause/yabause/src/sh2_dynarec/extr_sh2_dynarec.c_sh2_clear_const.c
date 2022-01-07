
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



void sh2_clear_const(u32 *isconst,u32 *constmap,signed char reg)
{
  if(reg<0) return;
  *isconst&=~(1<<reg);
}
