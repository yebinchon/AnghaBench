
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_6__ {int y; int x; } ;
typedef TYPE_2__ rectDef_t ;
struct TYPE_5__ {scalar_t__ realTime; } ;
struct TYPE_7__ {scalar_t__ playerRefresh; scalar_t__ teamLeader; TYPE_1__ uiDC; } ;


 int Text_Paint (int ,int ,float,int ,int ,int ,int ,int) ;
 int UI_BuildPlayerList () ;
 int UI_Cvar_VariableString (char*) ;
 TYPE_3__ uiInfo ;

__attribute__((used)) static void UI_DrawSelectedPlayer(rectDef_t *rect, float scale, vec4_t color, int textStyle) {
 if (uiInfo.uiDC.realTime > uiInfo.playerRefresh) {
  uiInfo.playerRefresh = uiInfo.uiDC.realTime + 3000;
  UI_BuildPlayerList();
 }
  Text_Paint(rect->x, rect->y, scale, color, (uiInfo.teamLeader) ? UI_Cvar_VariableString("cg_selectedPlayerName") : UI_Cvar_VariableString("name") , 0, 0, textStyle);
}
