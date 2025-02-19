
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char CCREG ;
 int EXCLUDE_REG ;
 int HOST_REGS ;
 char TEMPREG ;
 int emit_loadreg (char,int) ;
 scalar_t__ get_reg (char*,char) ;

void load_needed_regs(signed char i_regmap[],signed char next_regmap[])
{
  int hr;
  for(hr=0;hr<HOST_REGS;hr++) {
    if(hr!=EXCLUDE_REG) {
      if(get_reg(next_regmap,i_regmap[hr])>=0) {
        if(i_regmap[hr]>=0 && i_regmap[hr]<TEMPREG && i_regmap[hr]!=CCREG)
        {
          emit_loadreg(i_regmap[hr],hr);
        }
      }
    }
  }
}
