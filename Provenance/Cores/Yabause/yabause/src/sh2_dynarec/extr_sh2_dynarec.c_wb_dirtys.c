
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 char CCREG ;
 int EXCLUDE_REG ;
 int HOST_REGS ;
 int emit_storereg (char,int) ;

void wb_dirtys(signed char i_regmap[],u32 i_dirty)
{
  int hr;
  for(hr=0;hr<HOST_REGS;hr++) {
    if(hr!=EXCLUDE_REG) {
      if(i_regmap[hr]>=0) {
        if(i_regmap[hr]!=CCREG) {
          if((i_dirty>>hr)&1) {
            emit_storereg(i_regmap[hr],hr);
          }
        }
      }
    }
  }
}
