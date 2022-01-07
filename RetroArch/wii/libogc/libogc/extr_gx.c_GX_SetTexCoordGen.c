
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int GX_DTTIDENTITY ;
 int GX_FALSE ;
 int GX_SetTexCoordGen2 (int ,int ,int ,int ,int ,int ) ;

void GX_SetTexCoordGen(u16 texcoord,u32 tgen_typ,u32 tgen_src,u32 mtxsrc)
{
  GX_SetTexCoordGen2(texcoord,tgen_typ,tgen_src,mtxsrc,GX_FALSE,GX_DTTIDENTITY);
}
