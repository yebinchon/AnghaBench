
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int,int,int) ;

void GX_SetFieldMask(u8 even_mask,u8 odd_mask)
{
 u32 val = 0;

 val = (_SHIFTL(even_mask,1,1))|(odd_mask&1);
 GX_LOAD_BP_REG(0x44000000|val);
}
