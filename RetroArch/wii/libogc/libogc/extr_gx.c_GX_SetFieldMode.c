
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int lpWidth; } ;


 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int,int,int) ;
 int __GX_FlushTextureState () ;
 TYPE_1__* __gx ;

void GX_SetFieldMode(u8 field_mode,u8 half_aspect_ratio)
{
 __gx->lpWidth = (__gx->lpWidth&~0x400000)|(_SHIFTL(half_aspect_ratio,22,1));
 GX_LOAD_BP_REG(__gx->lpWidth);

 __GX_FlushTextureState();
 GX_LOAD_BP_REG(0x68000000|(field_mode&1));
 __GX_FlushTextureState();
}
