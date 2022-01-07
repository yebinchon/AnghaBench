
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ gametype; } ;


 int CG_DrawBigString (int,int,char*,float) ;
 scalar_t__ GT_TEAM ;
 scalar_t__ GT_TOURNAMENT ;
 TYPE_1__ cgs ;

__attribute__((used)) static void CG_DrawSpectator(void) {
 CG_DrawBigString(320 - 9 * 8, 440, "SPECTATOR", 1.0F);
 if ( cgs.gametype == GT_TOURNAMENT ) {
  CG_DrawBigString(320 - 15 * 8, 460, "waiting to play", 1.0F);
 }
 else if ( cgs.gametype >= GT_TEAM ) {
  CG_DrawBigString(320 - 39 * 8, 460, "press ESC and use the JOIN menu to play", 1.0F);
 }
}
