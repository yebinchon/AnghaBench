
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISTMAP ;
 int FRACUNIT ;
 int FixedDiv (int,int) ;
 int LIGHTLEVELS ;
 int LIGHTSCALESHIFT ;
 int LIGHTZSHIFT ;
 int MAXLIGHTZ ;
 int NUMCOLORMAPS ;
 int SCREENWIDTH ;
 scalar_t__ colormaps ;
 scalar_t__** zlight ;

void R_InitLightTables (void)
{
    int i;
    int j;
    int level;
    int startmap;
    int scale;



    for (i=0 ; i< LIGHTLEVELS ; i++)
    {
 startmap = ((LIGHTLEVELS-1-i)*2)*NUMCOLORMAPS/LIGHTLEVELS;
 for (j=0 ; j<MAXLIGHTZ ; j++)
 {
     scale = FixedDiv ((SCREENWIDTH/2*FRACUNIT), (j+1)<<LIGHTZSHIFT);
     scale >>= LIGHTSCALESHIFT;
     level = startmap - scale/DISTMAP;

     if (level < 0)
  level = 0;

     if (level >= NUMCOLORMAPS)
  level = NUMCOLORMAPS-1;

     zlight[i][j] = colormaps + level*256;
 }
    }
}
