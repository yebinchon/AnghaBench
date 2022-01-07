
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HOST_REGS ;

void clear_all_regs(signed char regmap[])
{
  int hr;
  for (hr=0;hr<HOST_REGS;hr++) regmap[hr]=-1;
}
