
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int s32 ;
struct TYPE_2__ {int VATTable; int * VAT2reg; int * VAT1reg; int * VAT0reg; } ;


 int GX_LOAD_CP_REG (int,int ) ;
 TYPE_1__* __gx ;

__attribute__((used)) static void __GX_SetVAT()
{
 u8 setvtx = 0;
 s32 i;

 for(i=0;i<8;i++) {
  setvtx = (1<<i);
  if(__gx->VATTable&setvtx) {
   GX_LOAD_CP_REG((0x70+(i&7)),__gx->VAT0reg[i]);
   GX_LOAD_CP_REG((0x80+(i&7)),__gx->VAT1reg[i]);
   GX_LOAD_CP_REG((0x90+(i&7)),__gx->VAT2reg[i]);
  }
 }
 __gx->VATTable = 0;
}
