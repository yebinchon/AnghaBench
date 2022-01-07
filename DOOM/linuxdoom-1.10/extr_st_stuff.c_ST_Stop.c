
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I_SetPalette (int ) ;
 int PU_CACHE ;
 int W_CacheLumpNum (int ,int ) ;
 int lu_palette ;
 int st_stopped ;

void ST_Stop (void)
{
    if (st_stopped)
 return;

    I_SetPalette (W_CacheLumpNum (lu_palette, PU_CACHE));

    st_stopped = 1;
}
