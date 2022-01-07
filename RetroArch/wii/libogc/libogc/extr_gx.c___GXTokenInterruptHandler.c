
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int* _peReg ;
 int tokenCB (int) ;

__attribute__((used)) static void __GXTokenInterruptHandler(u32 irq,void *ctx)
{
 u16 token = _peReg[7];

 if(tokenCB)
  tokenCB(token);

 _peReg[5] = (_peReg[5]&~0x04)|0x04;
}
