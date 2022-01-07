
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int LWP_ThreadBroadcast (int ) ;
 int _gxfinished ;
 int _gxwaitfinish ;
 int* _peReg ;
 int drawDoneCB () ;

__attribute__((used)) static void __GXFinishInterruptHandler(u32 irq,void *ctx)
{
 _peReg[5] = (_peReg[5]&~0x08)|0x08;
 _gxfinished = 1;

 if(drawDoneCB)
  drawDoneCB();

 LWP_ThreadBroadcast(_gxwaitfinish);
}
