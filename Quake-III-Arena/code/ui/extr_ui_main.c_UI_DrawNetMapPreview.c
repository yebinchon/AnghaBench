
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_6__ {int h; int w; int y; int x; } ;
typedef TYPE_2__ rectDef_t ;
struct TYPE_5__ {scalar_t__ currentServerPreview; } ;
struct TYPE_7__ {TYPE_1__ serverStatus; } ;


 int UI_DrawHandlePic (int ,int ,int ,int ,scalar_t__) ;
 scalar_t__ trap_R_RegisterShaderNoMip (char*) ;
 TYPE_3__ uiInfo ;

__attribute__((used)) static void UI_DrawNetMapPreview(rectDef_t *rect, float scale, vec4_t color) {

 if (uiInfo.serverStatus.currentServerPreview > 0) {
  UI_DrawHandlePic( rect->x, rect->y, rect->w, rect->h, uiInfo.serverStatus.currentServerPreview);
 } else {
  UI_DrawHandlePic( rect->x, rect->y, rect->w, rect->h, trap_R_RegisterShaderNoMip("menu/art/unknownmap"));
 }
}
