
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_6__ {int x; int y; scalar_t__ menuPosition; int flags; int name; scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; TYPE_1__* parent; } ;
struct TYPE_7__ {size_t curvalue; TYPE_2__ generic; } ;
typedef TYPE_3__ menulist_s ;
struct TYPE_8__ {int * crosshairShader; } ;
struct TYPE_5__ {scalar_t__ cursor; } ;


 int QMF_BLINK ;
 int QMF_GRAYED ;
 scalar_t__ SMALLCHAR_WIDTH ;
 int UI_BLINK ;
 int UI_CENTER ;
 int UI_DrawChar (int,int,int,int,float*) ;
 int UI_DrawHandlePic (scalar_t__,int,int,int,int ) ;
 int UI_DrawString (scalar_t__,int,int ,int,float*) ;
 int UI_FillRect (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int UI_PULSE ;
 int UI_RIGHT ;
 int UI_SMALLFONT ;
 int listbar_color ;
 TYPE_4__ s_preferences ;
 float* text_color_disabled ;
 float* text_color_highlight ;
 float* text_color_normal ;

__attribute__((used)) static void Crosshair_Draw( void *self ) {
 menulist_s *s;
 float *color;
 int x, y;
 int style;
 qboolean focus;

 s = (menulist_s *)self;
 x = s->generic.x;
 y = s->generic.y;

 style = UI_SMALLFONT;
 focus = (s->generic.parent->cursor == s->generic.menuPosition);

 if ( s->generic.flags & QMF_GRAYED )
  color = text_color_disabled;
 else if ( focus )
 {
  color = text_color_highlight;
  style |= UI_PULSE;
 }
 else if ( s->generic.flags & QMF_BLINK )
 {
  color = text_color_highlight;
  style |= UI_BLINK;
 }
 else
  color = text_color_normal;

 if ( focus )
 {

  UI_FillRect( s->generic.left, s->generic.top, s->generic.right-s->generic.left+1, s->generic.bottom-s->generic.top+1, listbar_color );
  UI_DrawChar( x, y, 13, UI_CENTER|UI_BLINK|UI_SMALLFONT, color);
 }

 UI_DrawString( x - SMALLCHAR_WIDTH, y, s->generic.name, style|UI_RIGHT, color );
 if( !s->curvalue ) {
  return;
 }
 UI_DrawHandlePic( x + SMALLCHAR_WIDTH, y - 4, 24, 24, s_preferences.crosshairShader[s->curvalue] );
}
