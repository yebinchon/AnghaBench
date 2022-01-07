
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXCLUDE_REG ;
 int HOST_REGS ;

signed char get_reg(signed char regmap[],int r)
{
  int hr;
  for (hr=0;hr<HOST_REGS;hr++) if(hr!=EXCLUDE_REG&&regmap[hr]==r) return hr;
  return -1;
}
