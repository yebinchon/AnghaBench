
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {char* regmap_entry; } ;


 char CCREG ;
 int EXCLUDE_REG ;
 size_t HOST_CCREG ;
 int HOST_REGS ;
 char TEMPREG ;
 int assert (int) ;
 int emit_loadreg (char,int) ;
 int emit_storereg (char,size_t) ;
 scalar_t__ internal_branch (int) ;
 TYPE_1__* regs ;
 int start ;

void load_regs_bt(signed char i_regmap[],u32 i_dirty,int addr)
{

  if(internal_branch(addr))
  {
    int t=(addr-start)>>1;
    int hr;

    if(i_regmap[HOST_CCREG]!=CCREG) {
      assert(i_regmap[HOST_CCREG]==-1);
    }
    if(regs[t].regmap_entry[HOST_CCREG]!=CCREG) {
      emit_storereg(CCREG,HOST_CCREG);
    }

    for(hr=0;hr<HOST_REGS;hr++) {
      if(hr!=EXCLUDE_REG&&regs[t].regmap_entry[hr]>=0&&regs[t].regmap_entry[hr]<TEMPREG) {
        if(i_regmap[hr]!=regs[t].regmap_entry[hr] ) {
          if(regs[t].regmap_entry[hr]!=CCREG)
          {
            emit_loadreg(regs[t].regmap_entry[hr],hr);
          }
        }
      }
    }
  }
}
