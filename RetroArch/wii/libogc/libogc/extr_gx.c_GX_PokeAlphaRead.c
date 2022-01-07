
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int* _peReg ;

void GX_PokeAlphaRead(u8 mode)
{
 _peReg[4] = (mode&~0x4)|0x4;
}
