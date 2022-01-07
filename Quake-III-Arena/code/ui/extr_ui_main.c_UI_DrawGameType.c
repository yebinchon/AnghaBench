
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_7__ {int y; int x; } ;
typedef TYPE_2__ rectDef_t ;
struct TYPE_9__ {TYPE_1__* gameTypes; } ;
struct TYPE_8__ {size_t integer; } ;
struct TYPE_6__ {int gameType; } ;


 int Text_Paint (int ,int ,float,int ,int ,int ,int ,int) ;
 TYPE_4__ uiInfo ;
 TYPE_3__ ui_gameType ;

__attribute__((used)) static void UI_DrawGameType(rectDef_t *rect, float scale, vec4_t color, int textStyle) {
  Text_Paint(rect->x, rect->y, scale, color, uiInfo.gameTypes[ui_gameType.integer].gameType, 0, 0, textStyle);
}
