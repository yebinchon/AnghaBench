
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regstat {int* regmap; int isdoingcp; } ;


 int HOST_REGS ;

int is_const(struct regstat *cur,signed char reg)
{
  int hr;
  if(reg<0) return 0;
  for (hr=0;hr<HOST_REGS;hr++) {
    if((cur->regmap[hr]&63)==reg) {
      return (cur->isdoingcp>>hr)&1;
    }
  }
  return 0;
}
