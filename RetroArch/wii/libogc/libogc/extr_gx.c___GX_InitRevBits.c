
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_2__ {int* VAT0reg; int* VAT1reg; } ;


 int GX_LOAD_BP_REG (int) ;
 int GX_LOAD_CP_REG (int,int) ;
 int GX_LOAD_XF_REG (int,int) ;
 TYPE_1__* __gx ;

__attribute__((used)) static void __GX_InitRevBits()
{
 s32 i;

 i=0;
 while(i<8) {
  __gx->VAT0reg[i] = 0x40000000;
  __gx->VAT1reg[i] = 0x80000000;
  GX_LOAD_CP_REG((0x0080|i),__gx->VAT1reg[i]);
  i++;
 }

 GX_LOAD_XF_REG(0x1000,0x3f);
 GX_LOAD_XF_REG(0x1012,0x01);

 GX_LOAD_BP_REG(0x5800000f);

}
