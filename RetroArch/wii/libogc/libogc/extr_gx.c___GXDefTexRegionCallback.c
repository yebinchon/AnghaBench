
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int * texRegion; } ;
typedef int GXTexRegion ;
typedef int GXTexObj ;


 int GX_GetTexObjFmt (int *) ;
 TYPE_1__* __gx ;

__attribute__((used)) static GXTexRegion* __GXDefTexRegionCallback(GXTexObj *obj,u8 mapid)
{
 u32 fmt;
 u32 idx;
 static u32 regionA = 0;
 static u32 regionB = 0;
 GXTexRegion *ret = ((void*)0);

 fmt = GX_GetTexObjFmt(obj);
 if(fmt==0x0008 || fmt==0x0009 || fmt==0x000a) {
  idx = regionB++;
  ret = &__gx->texRegion[(idx&3)+8];
 } else {
  idx = regionA++;
  ret = &__gx->texRegion[(idx&7)];
 }
 return ret;
}
