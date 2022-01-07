
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int GXTexRegion ;
typedef int GXTexObj ;


 int GX_LoadTexObjPreloaded (int *,int *,int ) ;
 int * regionCB (int *,int ) ;

void GX_LoadTexObj(GXTexObj *obj,u8 mapid)
{
 GXTexRegion *region = ((void*)0);

 if(regionCB)
  region = regionCB(obj,mapid);

 GX_LoadTexObjPreloaded(obj,region,mapid);
}
