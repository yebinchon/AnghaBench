
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int _SHIFTL (int ,int,int) ;

void GX_PeekZ(u16 x,u16 y,u32 *z)
{
 u32 regval;

 regval = 0xc8000000|(_SHIFTL(x,2,10));
 regval = (regval&~0x3FF000)|(_SHIFTL(y,12,10));
 regval = (regval&~0xC00000)|0x400000;
 *z = *(u32*)regval;
}
