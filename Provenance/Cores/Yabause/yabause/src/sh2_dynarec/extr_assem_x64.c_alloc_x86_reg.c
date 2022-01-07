
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u32 ;
struct regstat {char* regmap; int dirty; int isdoingcp; } ;


 int ESP ;
 int HOST_REGS ;

void alloc_x86_reg(struct regstat *cur,int i,signed char reg,char hr)
{
  int n;
  u32 dirty=0;


  for(n=0;n<HOST_REGS;n++)
  {
    if(n!=ESP&&cur->regmap[n]==reg) {
      dirty=(cur->dirty>>n)&1;
      cur->regmap[n]=-1;
    }
  }

  cur->regmap[hr]=reg;
  cur->dirty&=~(1<<hr);
  cur->dirty|=dirty<<hr;
  cur->isdoingcp&=~(1<<hr);
}
