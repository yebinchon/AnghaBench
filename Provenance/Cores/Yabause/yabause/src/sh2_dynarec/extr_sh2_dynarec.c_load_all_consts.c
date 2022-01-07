
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int isdoingcp; } ;


 int EXCLUDE_REG ;
 int HOST_REGS ;
 int** cpmap ;
 int emit_movimm (int,int) ;
 TYPE_1__* regs ;

void load_all_consts(signed char regmap[],u32 dirty,int i)
{
  int hr;

  for(hr=0;hr<HOST_REGS;hr++) {
    if(hr!=EXCLUDE_REG&&regmap[hr]>=0&&((dirty>>hr)&1)) {
      if(((regs[i].isdoingcp>>hr)&1)&&regmap[hr]<64&&regmap[hr]>=0) {
        int value=cpmap[i][hr];
        emit_movimm(value,hr);
      }
    }
  }
}
