
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int _SHIFTL (int ,int,int) ;
 int* _peReg ;

void GX_PokeDither(u8 dither)
{
 _peReg[1] = (_peReg[1]&~0x4)|(_SHIFTL(dither,2,1));
}
