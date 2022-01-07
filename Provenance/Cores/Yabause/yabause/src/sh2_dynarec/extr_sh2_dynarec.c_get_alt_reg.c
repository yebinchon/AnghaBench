
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXCLUDE_REG ;
 int HOST_REGS ;

signed char get_alt_reg(signed char regmap[],int r)
{
  int hr;
  for (hr=HOST_REGS-1;hr>=0;hr--) if(hr!=EXCLUDE_REG&&regmap[hr]==r) return hr;
  return -1;
}
