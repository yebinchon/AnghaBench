
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ h; scalar_t__ w; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_2__ rectDef_t ;
typedef scalar_t__ qboolean ;
struct TYPE_5__ {scalar_t__* powerups; } ;
struct TYPE_7__ {TYPE_1__ predictedPlayerState; } ;


 int CG_DrawFlagModel (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,scalar_t__) ;
 size_t PW_BLUEFLAG ;
 size_t PW_NEUTRALFLAG ;
 size_t PW_REDFLAG ;
 int TEAM_BLUE ;
 int TEAM_FREE ;
 int TEAM_RED ;
 TYPE_3__ cg ;

__attribute__((used)) static void CG_DrawPlayerHasFlag(rectDef_t *rect, qboolean force2D) {
 int adj = (force2D) ? 0 : 2;
 if( cg.predictedPlayerState.powerups[PW_REDFLAG] ) {
   CG_DrawFlagModel( rect->x + adj, rect->y + adj, rect->w - adj, rect->h - adj, TEAM_RED, force2D);
 } else if( cg.predictedPlayerState.powerups[PW_BLUEFLAG] ) {
   CG_DrawFlagModel( rect->x + adj, rect->y + adj, rect->w - adj, rect->h - adj, TEAM_BLUE, force2D);
 } else if( cg.predictedPlayerState.powerups[PW_NEUTRALFLAG] ) {
   CG_DrawFlagModel( rect->x + adj, rect->y + adj, rect->w - adj, rect->h - adj, TEAM_FREE, force2D);
 }
}
