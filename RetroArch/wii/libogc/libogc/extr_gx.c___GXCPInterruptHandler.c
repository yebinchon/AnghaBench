
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int cpSRreg; int cpCRreg; } ;


 int __GXOverflowHandler () ;
 int __GXUnderflowHandler () ;
 TYPE_1__* __gx ;
 int* _cpReg ;
 int breakPtCB () ;

__attribute__((used)) static void __GXCPInterruptHandler(u32 irq,void *ctx)
{
 __gx->cpSRreg = _cpReg[0];

 if((__gx->cpCRreg&0x08) && (__gx->cpSRreg&0x02))
  __GXUnderflowHandler();

 if((__gx->cpCRreg&0x04) && (__gx->cpSRreg&0x01))
  __GXOverflowHandler();

 if((__gx->cpCRreg&0x20) && (__gx->cpSRreg&0x10)) {
  __gx->cpCRreg &= ~0x20;
  _cpReg[1] = __gx->cpCRreg;
  if(breakPtCB)
   breakPtCB();
 }
}
