
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PU_CACHE ;
 int V_DrawPatchDirect (int,int,int ,int ) ;
 int W_CacheLumpName (char*,int ) ;

void M_DrawEpisode(void)
{
    V_DrawPatchDirect (54,38,0,W_CacheLumpName("M_EPISOD",PU_CACHE));
}
