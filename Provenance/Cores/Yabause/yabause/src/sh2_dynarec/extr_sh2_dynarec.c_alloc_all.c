
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regstat {int* regmap; int dirty; } ;


 int EXCLUDE_REG ;
 int HOST_REGS ;
 int* rs1 ;
 int* rs2 ;
 int* rs3 ;
 int* rt1 ;
 int* rt2 ;

void alloc_all(struct regstat *cur,int i)
{
  int hr;

  for(hr=0;hr<HOST_REGS;hr++) {
    if(hr!=EXCLUDE_REG) {
      if(((cur->regmap[hr]&63)!=rs1[i])&&((cur->regmap[hr]&63)!=rs2[i])&&((cur->regmap[hr]&63)!=rs3[i])&&
         ((cur->regmap[hr]&63)!=rt1[i])&&((cur->regmap[hr]&63)!=rt2[i]))
      {
        cur->regmap[hr]=-1;
        cur->dirty&=~(1<<hr);
      }
    }
  }
}
