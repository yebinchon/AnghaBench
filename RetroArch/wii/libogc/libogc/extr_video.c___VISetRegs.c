
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct TYPE_2__ {int tv; int timing; } ;


 TYPE_1__ HorVer ;
 int VI_REGCHANGE (size_t) ;
 int __getCurrentFieldEvenOdd () ;
 int * _viReg ;
 size_t cntlzd (int) ;
 int currTiming ;
 int currTvMode ;
 int currentFb ;
 int nextFb ;
 int shdw_changeMode ;
 int shdw_changed ;
 int * shdw_regs ;

__attribute__((used)) static inline u32 __VISetRegs()
{
 u32 val;
 u64 mask;

 if(shdw_changeMode==1){
  if(!__getCurrentFieldEvenOdd()) return 0;
 }

 while(shdw_changed) {
  val = cntlzd(shdw_changed);
  _viReg[val] = shdw_regs[val];
  mask = VI_REGCHANGE(val);
  shdw_changed &= ~mask;
 }
 shdw_changeMode = 0;
 currTiming = HorVer.timing;
 currTvMode = HorVer.tv;

 currentFb = nextFb;

 return 1;
}
