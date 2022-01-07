
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_6__ {scalar_t__ menuPosition; scalar_t__ y; scalar_t__ x; TYPE_1__* parent; } ;
struct TYPE_7__ {int curvalue; TYPE_2__ generic; } ;
typedef TYPE_3__ menulist_s ;
struct TYPE_8__ {int * fxPic; int fxBasePic; } ;
struct TYPE_5__ {scalar_t__ cursor; } ;


 scalar_t__ PROP_HEIGHT ;
 int UI_DrawHandlePic (scalar_t__,scalar_t__,int,int,int ) ;
 int UI_DrawProportionalString (scalar_t__,scalar_t__,char*,int,float*) ;
 int UI_LEFT ;
 int UI_PULSE ;
 int UI_SMALLFONT ;
 TYPE_4__ s_playersettings ;
 float* text_color_highlight ;
 float* text_color_normal ;

__attribute__((used)) static void PlayerSettings_DrawEffects( void *self ) {
 menulist_s *item;
 qboolean focus;
 int style;
 float *color;

 item = (menulist_s *)self;
 focus = (item->generic.parent->cursor == item->generic.menuPosition);

 style = UI_LEFT|UI_SMALLFONT;
 color = text_color_normal;
 if( focus ) {
  style |= UI_PULSE;
  color = text_color_highlight;
 }

 UI_DrawProportionalString( item->generic.x, item->generic.y, "Effects", style, color );

 UI_DrawHandlePic( item->generic.x + 64, item->generic.y + PROP_HEIGHT + 8, 128, 8, s_playersettings.fxBasePic );
 UI_DrawHandlePic( item->generic.x + 64 + item->curvalue * 16 + 8, item->generic.y + PROP_HEIGHT + 6, 16, 12, s_playersettings.fxPic[item->curvalue] );
}
