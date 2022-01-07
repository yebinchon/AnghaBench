
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PU_CACHE ;
 int V_DrawPatchDirect (int ,int ,int ,int ) ;
 int W_CacheLumpName (char*,int ) ;

 int gamemode ;
 int inhelpscreens ;




void M_DrawReadThis2(void)
{
    inhelpscreens = 1;
    switch ( gamemode )
    {
      case 129:
      case 131:

 V_DrawPatchDirect (0,0,0,W_CacheLumpName("CREDIT",PU_CACHE));
 break;
      case 128:
      case 130:
 V_DrawPatchDirect (0,0,0,W_CacheLumpName("HELP2",PU_CACHE));
 break;
      default:
 break;
    }
    return;
}
