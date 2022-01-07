
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * vec3_t ;
struct TYPE_6__ {int h; int w; int y; int x; } ;
typedef TYPE_2__ rectDef_t ;
struct TYPE_7__ {TYPE_1__* teamList; } ;
struct TYPE_5__ {int teamIcon; int imageName; void* teamIcon_Name; void* teamIcon_Metal; } ;


 int UI_Cvar_VariableString (char*) ;
 int UI_DrawHandlePic (int ,int ,int ,int ,int) ;
 int UI_TeamIndexFromName (int ) ;
 void* trap_R_RegisterShaderNoMip (int ) ;
 int trap_R_SetColor (int *) ;
 TYPE_3__ uiInfo ;
 int va (char*,int ) ;

__attribute__((used)) static void UI_DrawOpponentLogo(rectDef_t *rect, vec3_t color) {
  int i = UI_TeamIndexFromName(UI_Cvar_VariableString("ui_opponentName"));
 if (uiInfo.teamList[i].teamIcon == -1) {
    uiInfo.teamList[i].teamIcon = trap_R_RegisterShaderNoMip(uiInfo.teamList[i].imageName);
    uiInfo.teamList[i].teamIcon_Metal = trap_R_RegisterShaderNoMip(va("%s_metal",uiInfo.teamList[i].imageName));
    uiInfo.teamList[i].teamIcon_Name = trap_R_RegisterShaderNoMip(va("%s_name", uiInfo.teamList[i].imageName));
 }

  trap_R_SetColor( color );
 UI_DrawHandlePic( rect->x, rect->y, rect->w, rect->h, uiInfo.teamList[i].teamIcon );
  trap_R_SetColor( ((void*)0) );
}
