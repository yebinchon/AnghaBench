
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int _SHIFTL (int,int,int) ;
 int* _peReg ;

void GX_PokeDstAlpha(u8 enable,u8 a)
{
 _peReg[2] = (_SHIFTL(enable,8,1))|(a&0xff);
}
