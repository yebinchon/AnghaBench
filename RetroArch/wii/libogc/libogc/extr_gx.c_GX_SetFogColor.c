
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b; int g; int r; } ;
typedef TYPE_1__ GXColor ;


 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int ,int,int) ;

void GX_SetFogColor(GXColor color)
{
 GX_LOAD_BP_REG(0xf2000000|(_SHIFTL(color.r,16,8)|_SHIFTL(color.g,8,8)|(color.b&0xff)));
}
