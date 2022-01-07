
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef float* vec4_t ;
struct TYPE_3__ {int teamStatusBar; } ;
struct TYPE_4__ {TYPE_1__ media; } ;


 int CG_DrawPic (int,int,int,int,int ) ;
 int TEAM_BLUE ;
 int TEAM_RED ;
 TYPE_2__ cgs ;
 int trap_R_SetColor (float*) ;

void CG_DrawTeamBackground( int x, int y, int w, int h, float alpha, int team )
{
 vec4_t hcolor;

 hcolor[3] = alpha;
 if ( team == TEAM_RED ) {
  hcolor[0] = 1;
  hcolor[1] = 0;
  hcolor[2] = 0;
 } else if ( team == TEAM_BLUE ) {
  hcolor[0] = 0;
  hcolor[1] = 0;
  hcolor[2] = 1;
 } else {
  return;
 }
 trap_R_SetColor( hcolor );
 CG_DrawPic( x, y, w, h, cgs.media.teamStatusBar );
 trap_R_SetColor( ((void*)0) );
}
