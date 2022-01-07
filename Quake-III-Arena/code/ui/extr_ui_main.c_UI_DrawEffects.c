
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_8__ {scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_3__ rectDef_t ;
struct TYPE_6__ {int * fxPic; int fxBasePic; } ;
struct TYPE_7__ {TYPE_1__ Assets; } ;
struct TYPE_9__ {int effectsColor; TYPE_2__ uiDC; } ;


 int UI_DrawHandlePic (scalar_t__,scalar_t__,int,int,int ) ;
 TYPE_4__ uiInfo ;

__attribute__((used)) static void UI_DrawEffects(rectDef_t *rect, float scale, vec4_t color) {
 UI_DrawHandlePic( rect->x, rect->y - 14, 128, 8, uiInfo.uiDC.Assets.fxBasePic );
 UI_DrawHandlePic( rect->x + uiInfo.effectsColor * 16 + 8, rect->y - 16, 16, 12, uiInfo.uiDC.Assets.fxPic[uiInfo.effectsColor] );
}
