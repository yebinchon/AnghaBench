
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



void sh2_set_const(u32 *isconst,u32 *constmap,signed char reg,u64 value)
{
  *isconst|=1<<reg;
  constmap[reg]=value;
}
