
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {char* regmap_entry; int dirty; } ;


 char CCREG ;
 int EXCLUDE_REG ;
 int HOST_REGS ;
 char SR ;
 int emit_storereg (char,int) ;
 TYPE_1__* regs ;
 int start ;

void wb_needed_dirtys(signed char i_regmap[],u32 i_dirty,int addr)
{
  int hr;
  int t=(addr-start)>>1;
  for(hr=0;hr<HOST_REGS;hr++) {
    if(hr!=EXCLUDE_REG) {
      if(i_regmap[hr]>=0) {
        if(i_regmap[hr]!=CCREG) {
          if((i_regmap[hr]==regs[t].regmap_entry[hr] && ((regs[t].dirty>>hr)&1)) || i_regmap[hr]==SR || i_regmap[hr]==15) {
            if((i_dirty>>hr)&1) {
              emit_storereg(i_regmap[hr],hr);
            }
          }
        }
      }
    }
  }
}
