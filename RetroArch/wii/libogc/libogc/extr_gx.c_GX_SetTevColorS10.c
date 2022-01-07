
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int a; int r; int g; int b; } ;
typedef TYPE_1__ GXColorS10 ;


 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int,int,int) ;

void GX_SetTevColorS10(u8 tev_regid,GXColorS10 color)
{
 u32 reg;

 reg = (_SHIFTL((0xe0+(tev_regid<<1)),24,8)|(_SHIFTL(color.a,12,11))|(color.r&0x7ff));
 GX_LOAD_BP_REG(reg);

 reg = (_SHIFTL((0xe1+(tev_regid<<1)),24,8)|(_SHIFTL(color.g,12,11))|(color.b&0x7ff));
 GX_LOAD_BP_REG(reg);


 GX_LOAD_BP_REG(reg);
 GX_LOAD_BP_REG(reg);
}
