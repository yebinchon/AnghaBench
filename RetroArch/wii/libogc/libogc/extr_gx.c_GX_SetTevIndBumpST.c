
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int GX_FALSE ;
 int GX_ITBA_OFF ;
 int GX_ITB_NONE ;
 int GX_ITB_ST ;
 int GX_ITF_8 ;



 int GX_ITM_OFF ;
 int GX_ITM_S0 ;
 int GX_ITM_S1 ;
 int GX_ITM_S2 ;
 int GX_ITM_T0 ;
 int GX_ITM_T1 ;
 int GX_ITM_T2 ;
 int GX_ITW_0 ;
 int GX_ITW_OFF ;
 int GX_SetTevIndirect (int,int,int ,int ,int,int ,int ,int ,int ,int ) ;
 int GX_TRUE ;

void GX_SetTevIndBumpST(u8 tevstage,u8 indstage,u8 mtx_sel)
{
 u8 sel_s,sel_t;

 switch(mtx_sel) {
  case 130:
   sel_s = GX_ITM_S0;
   sel_t = GX_ITM_T0;
   break;
  case 129:
   sel_s = GX_ITM_S1;
   sel_t = GX_ITM_T1;
   break;
  case 128:
   sel_s = GX_ITM_S2;
   sel_t = GX_ITM_T2;
   break;
  default:
   sel_s = GX_ITM_OFF;
   sel_t = GX_ITM_OFF;
   break;
 }

 GX_SetTevIndirect((tevstage+0),indstage,GX_ITF_8,GX_ITB_ST,sel_s,GX_ITW_0,GX_ITW_0,GX_FALSE,GX_FALSE,GX_ITBA_OFF);
 GX_SetTevIndirect((tevstage+1),indstage,GX_ITF_8,GX_ITB_ST,sel_t,GX_ITW_0,GX_ITW_0,GX_TRUE,GX_FALSE,GX_ITBA_OFF);
 GX_SetTevIndirect((tevstage+2),indstage,GX_ITF_8,GX_ITB_NONE,GX_ITM_OFF,GX_ITW_OFF,GX_ITW_OFF,GX_TRUE,GX_FALSE,GX_ITBA_OFF);
}
