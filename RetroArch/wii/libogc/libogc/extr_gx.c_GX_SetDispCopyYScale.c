
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef float f32 ;
struct TYPE_2__ {int dispCopyCntrl; int dispCopyWH; } ;


 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int,int,int) ;
 int _SHIFTR (int ,int,int) ;
 int __GX_GetNumXfbLines (int,int) ;
 TYPE_1__* __gx ;

u32 GX_SetDispCopyYScale(f32 yscale)
{
 u32 ht,yScale = 0;

 yScale = ((u32)(256.0f/yscale))&0x1ff;
 GX_LOAD_BP_REG(0x4e000000|yScale);

 __gx->dispCopyCntrl = (__gx->dispCopyCntrl&~0x400)|(_SHIFTL(((256-yScale)>0),10,1));
 ht = _SHIFTR(__gx->dispCopyWH,12,10)+1;
 return __GX_GetNumXfbLines(ht,yScale);
}
