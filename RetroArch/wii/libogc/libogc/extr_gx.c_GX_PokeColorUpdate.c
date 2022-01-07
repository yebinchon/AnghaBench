
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int _SHIFTL (int ,int,int) ;
 int* _peReg ;

void GX_PokeColorUpdate(u8 update_enable)
{
 _peReg[1] = (_peReg[1]&~0x8)|(_SHIFTL(update_enable,3,1));
}
