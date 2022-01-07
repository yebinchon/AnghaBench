
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_4__ {int y; int x; } ;
typedef TYPE_1__ rectDef_t ;
struct TYPE_5__ {size_t skillIndex; } ;


 int Text_Paint (int ,int ,float,int ,int ,int ,int ,int) ;
 size_t numSkillLevels ;
 int * skillLevels ;
 TYPE_2__ uiInfo ;

__attribute__((used)) static void UI_DrawBotSkill(rectDef_t *rect, float scale, vec4_t color, int textStyle) {
 if (uiInfo.skillIndex >= 0 && uiInfo.skillIndex < numSkillLevels) {
   Text_Paint(rect->x, rect->y, scale, color, skillLevels[uiInfo.skillIndex], 0, 0, textStyle);
 }
}
