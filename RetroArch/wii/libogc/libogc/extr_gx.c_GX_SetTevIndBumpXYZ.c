
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int GX_FALSE ;
 int GX_ITBA_OFF ;
 int GX_ITB_STU ;
 int GX_ITF_8 ;
 int GX_ITW_OFF ;
 int GX_SetTevIndirect (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

void GX_SetTevIndBumpXYZ(u8 tevstage,u8 indstage,u8 mtx_sel)
{
 GX_SetTevIndirect(tevstage,indstage,GX_ITF_8,GX_ITB_STU,mtx_sel,GX_ITW_OFF,GX_ITW_OFF,GX_FALSE,GX_FALSE,GX_ITBA_OFF);
}
