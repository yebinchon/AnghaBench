
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int _SHIFTL (int,int,int) ;
 int* _peReg ;

void GX_PokeAlphaMode(u8 func,u8 threshold)
{
 _peReg[3] = (_SHIFTL(func,8,8))|(threshold&0xFF);
}
