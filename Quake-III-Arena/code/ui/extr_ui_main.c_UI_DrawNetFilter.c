
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_5__ {int y; int x; } ;
typedef TYPE_1__ rectDef_t ;
struct TYPE_7__ {int description; } ;
struct TYPE_6__ {size_t integer; } ;


 int Text_Paint (int ,int ,float,int ,int ,int ,int ,int) ;
 size_t numServerFilters ;
 TYPE_3__* serverFilters ;
 TYPE_2__ ui_serverFilterType ;
 int va (char*,int ) ;

__attribute__((used)) static void UI_DrawNetFilter(rectDef_t *rect, float scale, vec4_t color, int textStyle) {
 if (ui_serverFilterType.integer < 0 || ui_serverFilterType.integer > numServerFilters) {
  ui_serverFilterType.integer = 0;
 }
  Text_Paint(rect->x, rect->y, scale, color, va("Filter: %s", serverFilters[ui_serverFilterType.integer].description), 0, 0, textStyle);
}
