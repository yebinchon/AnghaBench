
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PU_CACHE ;
 int V_DrawPatchDirect (int,int,int ,int ) ;
 int W_CacheLumpName (char*,int ) ;

void M_DrawSaveLoadBorder(int x,int y)
{
    int i;

    V_DrawPatchDirect (x-8,y+7,0,W_CacheLumpName("M_LSLEFT",PU_CACHE));

    for (i = 0;i < 24;i++)
    {
 V_DrawPatchDirect (x,y+7,0,W_CacheLumpName("M_LSCNTR",PU_CACHE));
 x += 8;
    }

    V_DrawPatchDirect (x,y+7,0,W_CacheLumpName("M_LSRGHT",PU_CACHE));
}
