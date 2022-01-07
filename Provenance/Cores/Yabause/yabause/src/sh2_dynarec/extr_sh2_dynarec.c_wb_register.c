
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EXCLUDE_REG ;
 int HOST_REGS ;
 int emit_storereg (char,int) ;

void wb_register(signed char r,signed char regmap[],u32 dirty)
{
  int hr;
  for(hr=0;hr<HOST_REGS;hr++) {
    if(hr!=EXCLUDE_REG) {
      if((regmap[hr]&63)==r) {
        if((dirty>>hr)&1) {
          emit_storereg(r,hr);
        }
      }
    }
  }
}
