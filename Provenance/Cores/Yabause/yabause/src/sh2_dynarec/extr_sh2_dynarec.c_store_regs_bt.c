
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
 int emit_storereg (char,int) ;
 scalar_t__ internal_branch (int) ;
 TYPE_1__* regs ;
 int start ;
 char* unneeded_reg ;
 int wb_dirtys (char*,int) ;

void store_regs_bt(signed char i_regmap[],u32 i_dirty,int addr)
{
  if(internal_branch(addr))
  {
    int t=(addr-start)>>1;
    int hr;
    for(hr=0;hr<HOST_REGS;hr++) {
      if(hr!=EXCLUDE_REG) {
        if(i_regmap[hr]>=0 && i_regmap[hr]!=CCREG) {
          if(i_regmap[hr]!=regs[t].regmap_entry[hr] || !((regs[t].dirty>>hr)&1) ) {
            if((i_dirty>>hr)&1) {
              if(!((unneeded_reg[t]>>i_regmap[hr])&1)) {
                emit_storereg(i_regmap[hr],hr);
              }
            }
          }
        }
      }
    }
  }
  else
  {

    wb_dirtys(i_regmap,i_dirty);
  }
}
