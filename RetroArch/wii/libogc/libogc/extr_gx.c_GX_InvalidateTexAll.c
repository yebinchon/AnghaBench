
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GX_LOAD_BP_REG (int) ;
 int __GX_FlushTextureState () ;

void GX_InvalidateTexAll()
{
 __GX_FlushTextureState();
 GX_LOAD_BP_REG(0x66001000);
 GX_LOAD_BP_REG(0x66001100);
 __GX_FlushTextureState();
}
