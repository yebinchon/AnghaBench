
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int lpWidth; } ;


 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int ,int,int) ;
 TYPE_1__* __gx ;

void GX_SetPointSize(u8 width,u8 fmt)
{
 __gx->lpWidth = (__gx->lpWidth&~0xFF00)|(_SHIFTL(width,8,8));
 __gx->lpWidth = (__gx->lpWidth&~0x380000)|(_SHIFTL(fmt,19,3));
 GX_LOAD_BP_REG(__gx->lpWidth);
}
