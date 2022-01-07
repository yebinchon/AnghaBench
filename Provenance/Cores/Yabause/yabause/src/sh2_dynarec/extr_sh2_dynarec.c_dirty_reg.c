
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regstat {int* regmap; int dirty; } ;


 int HOST_REGS ;

void dirty_reg(struct regstat *cur,signed char reg)
{
  int hr;
  if(reg<0) return;
  for (hr=0;hr<HOST_REGS;hr++) {
    if((cur->regmap[hr]&63)==reg) {
      cur->dirty|=1<<hr;
    }
  }
}
