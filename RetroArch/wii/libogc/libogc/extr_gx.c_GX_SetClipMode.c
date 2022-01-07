
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int GX_LOAD_XF_REG (int,int) ;

void GX_SetClipMode(u8 mode)
{
 GX_LOAD_XF_REG(0x1005,(mode&1));
}
