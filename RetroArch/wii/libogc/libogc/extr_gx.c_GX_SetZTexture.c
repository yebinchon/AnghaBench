
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int GX_LOAD_BP_REG (int) ;
 int GX_TF_Z16 ;
 int GX_TF_Z8 ;
 scalar_t__ _SHIFTL (int,int,int) ;

void GX_SetZTexture(u8 op,u8 fmt,u32 bias)
{
 u32 val = 0;

 if(fmt==GX_TF_Z8) fmt = 0;
 else if(fmt==GX_TF_Z16) fmt = 1;
 else fmt = 2;

 val = (u32)(_SHIFTL(op,2,2))|(fmt&3);
 GX_LOAD_BP_REG(0xF4000000|(bias&0x00FFFFFF));
 GX_LOAD_BP_REG(0xF5000000|(val&0x00FFFFFF));
}
