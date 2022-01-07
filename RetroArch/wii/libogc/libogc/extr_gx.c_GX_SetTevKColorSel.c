
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct TYPE_2__ {int* tevSwapModeTable; } ;


 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int,int,int) ;
 size_t _SHIFTR (int,int,int) ;
 TYPE_1__* __gx ;

void GX_SetTevKColorSel(u8 tevstage,u8 sel)
{
 u32 reg = (_SHIFTR(tevstage,1,3));

 if(tevstage&1)
  __gx->tevSwapModeTable[reg] = (__gx->tevSwapModeTable[reg]&~0x7C000)|(_SHIFTL(sel,14,5));
 else
  __gx->tevSwapModeTable[reg] = (__gx->tevSwapModeTable[reg]&~0x1F0)|(_SHIFTL(sel,4,5));
 GX_LOAD_BP_REG(__gx->tevSwapModeTable[reg]);
}
