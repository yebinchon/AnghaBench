
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct regstat {char* regmap; int isdoingcp; int* cpmap; } ;


 int HOST_REGS ;

void set_const(struct regstat *cur,signed char reg,u64 value)
{
  int hr;
  if(reg<0) return;
  for (hr=0;hr<HOST_REGS;hr++) {
    if(cur->regmap[hr]==reg) {
      cur->isdoingcp|=1<<hr;
      cur->cpmap[hr]=value;
    }
    else if((cur->regmap[hr]^64)==reg) {
      cur->isdoingcp|=1<<hr;
      cur->cpmap[hr]=value>>32;
    }
  }
}
