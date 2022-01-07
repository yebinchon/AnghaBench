
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ESP ;
 int EXCLUDE_REG ;
 int HOST_REGS ;
 int count_bits (int) ;
 int emit_addimm (int ,int,int ) ;
 int emit_popreg (int) ;
 scalar_t__ slave ;

void restore_regs(u32 reglist)
{
  int hr;
  reglist&=0x7;
  int count=count_bits(reglist);
  if(slave) emit_addimm(ESP,(4-count)*4,ESP);
  else emit_addimm(ESP,(5-count)*4,ESP);
  if(count) {
    for(hr=HOST_REGS-1;hr>=0;hr--) {
      if(hr!=EXCLUDE_REG) {
        if((reglist>>hr)&1) {
          emit_popreg(hr);
        }
      }
    }
  }
}
