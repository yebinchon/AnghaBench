
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int h; int w; int y; int x; } ;
typedef TYPE_1__ rectDef_t ;
typedef int qhandle_t ;
struct TYPE_7__ {int teamTask; } ;
typedef TYPE_2__ clientInfo_t ;
struct TYPE_9__ {int time; } ;
struct TYPE_8__ {int orderTime; int currentOrder; scalar_t__ orderPending; TYPE_2__* clientinfo; } ;


 int CG_DrawPic (int ,int ,int ,int ,int ) ;
 size_t CG_GetSelectedPlayer () ;
 int CG_StatusHandle (int ) ;
 TYPE_4__ cg ;
 TYPE_3__ cgs ;
 int* sortedTeamPlayers ;

__attribute__((used)) static void CG_DrawSelectedPlayerStatus( rectDef_t *rect ) {
 clientInfo_t *ci = cgs.clientinfo + sortedTeamPlayers[CG_GetSelectedPlayer()];
 if (ci) {
  qhandle_t h;
  if (cgs.orderPending) {

   if ( cg.time > cgs.orderTime - 2500 && (cg.time >> 9 ) & 1 ) {
    return;
   }
   h = CG_StatusHandle(cgs.currentOrder);
  } else {
   h = CG_StatusHandle(ci->teamTask);
  }
  CG_DrawPic( rect->x, rect->y, rect->w, rect->h, h );
 }
}
