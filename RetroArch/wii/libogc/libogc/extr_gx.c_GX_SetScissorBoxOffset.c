
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int,int,int) ;
 int _SHIFTR (int,int,int) ;

void GX_SetScissorBoxOffset(s32 xoffset,s32 yoffset)
{
 s32 xoff = _SHIFTR((xoffset+0x156),1,24);
 s32 yoff = _SHIFTR((yoffset+0x156),1,24);

 GX_LOAD_BP_REG((0x59000000|(_SHIFTL(yoff,10,10))|(xoff&0x3ff)));
}
