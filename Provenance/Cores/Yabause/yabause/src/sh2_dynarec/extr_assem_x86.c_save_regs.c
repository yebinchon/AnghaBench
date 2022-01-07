
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
 int emit_pushreg (int) ;
 scalar_t__ slave ;

void save_regs(u32 reglist)
{
  reglist&=0x7;
  int hr;
  int count=count_bits(reglist);
  if(count) {
    for(hr=0;hr<HOST_REGS;hr++) {
      if(hr!=EXCLUDE_REG) {
        if((reglist>>hr)&1) {
          emit_pushreg(hr);
        }
      }
    }
  }
  if(slave) emit_addimm(ESP,-(4-count)*4,ESP);
  else emit_addimm(ESP,-(5-count)*4,ESP);
}
