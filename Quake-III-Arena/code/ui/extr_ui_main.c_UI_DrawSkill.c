
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_3__ {int y; int x; } ;
typedef TYPE_1__ rectDef_t ;


 int Text_Paint (int ,int ,float,int ,int ,int ,int ,int) ;
 int numSkillLevels ;
 int * skillLevels ;
 int trap_Cvar_VariableValue (char*) ;

__attribute__((used)) static void UI_DrawSkill(rectDef_t *rect, float scale, vec4_t color, int textStyle) {
  int i;
 i = trap_Cvar_VariableValue( "g_spSkill" );
  if (i < 1 || i > numSkillLevels) {
    i = 1;
  }
  Text_Paint(rect->x, rect->y, scale, color, skillLevels[i-1],0, 0, textStyle);
}
