
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_3__ {int y; int x; } ;
typedef TYPE_1__ rectDef_t ;


 int Com_Clamp (int,int,int ) ;
 int Text_Paint (int ,int ,float,int ,int ,int ,int ,int) ;
 int * handicapValues ;
 int trap_Cvar_VariableValue (char*) ;

__attribute__((used)) static void UI_DrawHandicap(rectDef_t *rect, float scale, vec4_t color, int textStyle) {
  int i, h;

  h = Com_Clamp( 5, 100, trap_Cvar_VariableValue("handicap") );
  i = 20 - h / 5;

  Text_Paint(rect->x, rect->y, scale, color, handicapValues[i], 0, 0, textStyle);
}
