
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int b; int g; int r; int a; } ;
typedef TYPE_1__ GXColor ;


 int _SHIFTL (int ,int,int) ;

void GX_PokeARGB(u16 x,u16 y,GXColor color)
{
 u32 regval;

 regval = 0xc8000000|(_SHIFTL(x,2,10));
 regval = (regval&~0x3FF000)|(_SHIFTL(y,12,10));
 *(u32*)regval = _SHIFTL(color.a,24,8)|_SHIFTL(color.r,16,8)|_SHIFTL(color.g,8,8)|(color.b&0xff);
}
