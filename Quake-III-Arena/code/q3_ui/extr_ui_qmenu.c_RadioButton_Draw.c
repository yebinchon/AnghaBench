
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_7__ {int x; int y; scalar_t__ menuPosition; int flags; char* name; scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; TYPE_1__* parent; } ;
struct TYPE_8__ {int curvalue; TYPE_2__ generic; } ;
typedef TYPE_3__ menuradiobutton_s ;
struct TYPE_9__ {int rb_on; int rb_off; } ;
struct TYPE_6__ {scalar_t__ cursor; } ;


 int QMF_GRAYED ;
 scalar_t__ SMALLCHAR_WIDTH ;
 int UI_BLINK ;
 int UI_CENTER ;
 int UI_DrawChar (int,int,int,int,float*) ;
 int UI_DrawHandlePic (scalar_t__,int,int,int,int ) ;
 int UI_DrawString (scalar_t__,int,char*,int,float*) ;
 int UI_FillRect (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int UI_LEFT ;
 int UI_PULSE ;
 int UI_RIGHT ;
 int UI_SMALLFONT ;
 int listbar_color ;
 float* text_color_disabled ;
 float* text_color_highlight ;
 float* text_color_normal ;
 TYPE_4__ uis ;

__attribute__((used)) static void RadioButton_Draw( menuradiobutton_s *rb )
{
 int x;
 int y;
 float *color;
 int style;
 qboolean focus;

 x = rb->generic.x;
 y = rb->generic.y;

 focus = (rb->generic.parent->cursor == rb->generic.menuPosition);

 if ( rb->generic.flags & QMF_GRAYED )
 {
  color = text_color_disabled;
  style = UI_LEFT|UI_SMALLFONT;
 }
 else if ( focus )
 {
  color = text_color_highlight;
  style = UI_LEFT|UI_PULSE|UI_SMALLFONT;
 }
 else
 {
  color = text_color_normal;
  style = UI_LEFT|UI_SMALLFONT;
 }

 if ( focus )
 {

  UI_FillRect( rb->generic.left, rb->generic.top, rb->generic.right-rb->generic.left+1, rb->generic.bottom-rb->generic.top+1, listbar_color );
  UI_DrawChar( x, y, 13, UI_CENTER|UI_BLINK|UI_SMALLFONT, color);
 }

 if ( rb->generic.name )
  UI_DrawString( x - SMALLCHAR_WIDTH, y, rb->generic.name, UI_RIGHT|UI_SMALLFONT, color );

 if ( !rb->curvalue )
 {
  UI_DrawHandlePic( x + SMALLCHAR_WIDTH, y + 2, 16, 16, uis.rb_off);
  UI_DrawString( x + SMALLCHAR_WIDTH + 16, y, "off", style, color );
 }
 else
 {
  UI_DrawHandlePic( x + SMALLCHAR_WIDTH, y + 2, 16, 16, uis.rb_on );
  UI_DrawString( x + SMALLCHAR_WIDTH + 16, y, "on", style, color );
 }
}
