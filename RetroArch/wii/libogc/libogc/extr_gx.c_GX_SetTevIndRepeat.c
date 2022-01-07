
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int GX_FALSE ;
 int GX_INDTEXSTAGE0 ;
 int GX_ITBA_OFF ;
 int GX_ITB_NONE ;
 int GX_ITF_8 ;
 int GX_ITM_OFF ;
 int GX_ITW_0 ;
 int GX_SetTevIndirect (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int GX_TRUE ;

void GX_SetTevIndRepeat(u8 tevstage)
{
 GX_SetTevIndirect(tevstage,GX_INDTEXSTAGE0,GX_ITF_8,GX_ITB_NONE,GX_ITM_OFF,GX_ITW_0,GX_ITW_0,GX_TRUE,GX_FALSE,GX_ITBA_OFF);
}
