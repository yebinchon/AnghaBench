
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int b; void* g; void* r; void* a; } ;
typedef TYPE_1__ GXColor ;


 int _SHIFTL (int ,int,int) ;
 void* _SHIFTR (int,int,int) ;

void GX_PeekARGB(u16 x,u16 y,GXColor *color)
{
 u32 regval,val;

 regval = 0xc8000000|(_SHIFTL(x,2,10));
 regval = (regval&~0x3FF000)|(_SHIFTL(y,12,10));
 val = *(u32*)regval;
 color->a = _SHIFTR(val,24,8);
 color->r = _SHIFTR(val,16,8);
 color->g = _SHIFTR(val,8,8);
 color->b = val&0xff;
}
