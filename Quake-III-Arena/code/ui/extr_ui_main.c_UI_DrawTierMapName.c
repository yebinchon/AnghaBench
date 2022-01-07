
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
struct TYPE_7__ {int tierCount; TYPE_1__* tierList; } ;
struct TYPE_5__ {int * maps; } ;


 int MAPS_PER_TIER ;
 int Text_Paint (int ,int ,float,int ,int ,int ,int ,int) ;
 int UI_EnglishMapName (int ) ;
 int trap_Cvar_VariableValue (char*) ;
 TYPE_3__ uiInfo ;

__attribute__((used)) static void UI_DrawTierMapName(rectDef_t *rect, float scale, vec4_t color, int textStyle) {
  int i, j;
 i = trap_Cvar_VariableValue( "ui_currentTier" );
  if (i < 0 || i >= uiInfo.tierCount) {
    i = 0;
  }
 j = trap_Cvar_VariableValue("ui_currentMap");
 if (j < 0 || j > MAPS_PER_TIER) {
  j = 0;
 }

  Text_Paint(rect->x, rect->y, scale, color, UI_EnglishMapName(uiInfo.tierList[i].maps[j]), 0, 0, textStyle);
}
