
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int isdoingcp; } ;


 int EXCLUDE_REG ;
 int HOST_REGS ;
 scalar_t__* bt ;
 int emit_movimm (int,int) ;
 scalar_t__ get_final_value (int,int,int*) ;
 TYPE_1__* regs ;

void load_consts(signed char pre[],signed char regmap[],int i)
{
  int hr;

  for(hr=0;hr<HOST_REGS;hr++) {
    if(hr!=EXCLUDE_REG&&regmap[hr]>=0) {
      if(i==0||!((regs[i-1].isdoingcp>>hr)&1)||pre[hr]!=regmap[hr]||bt[i]) {
        if(((regs[i].isdoingcp>>hr)&1)&&regmap[hr]<64&&regmap[hr]>=0) {
          int value;
          if(get_final_value(hr,i,&value)) {
            emit_movimm(value,hr);
          }
        }
      }
    }
  }
}
