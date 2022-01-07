
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct regstat {char* regmap; int * cpmap; } ;


 int HOST_REGS ;
 int exit (int) ;
 int printf (char*,char) ;

u64 get_const(struct regstat *cur,signed char reg)
{
  int hr;
  if(reg<0) return 0;
  for (hr=0;hr<HOST_REGS;hr++) {
    if(cur->regmap[hr]==reg) {
      return cur->cpmap[hr];
    }
  }
  printf("Unknown constant in r%d\n",reg);
  exit(1);
}
