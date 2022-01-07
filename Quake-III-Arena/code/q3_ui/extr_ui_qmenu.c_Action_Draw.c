
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; scalar_t__ menuPosition; int x; int y; TYPE_1__* parent; int name; } ;
struct TYPE_7__ {TYPE_2__ generic; } ;
typedef TYPE_3__ menuaction_s ;
struct TYPE_5__ {scalar_t__ cursor; } ;


 scalar_t__ BIGCHAR_WIDTH ;
 int QMF_BLINK ;
 int QMF_GRAYED ;
 int QMF_HIGHLIGHT_IF_FOCUS ;
 int QMF_PULSEIFFOCUS ;
 int UI_BLINK ;
 int UI_DrawChar (scalar_t__,int,int,int,float*) ;
 int UI_DrawString (int,int,int ,int,float*) ;
 int UI_LEFT ;
 int UI_PULSE ;
 float* menu_text_color ;
 float* text_color_disabled ;
 float* text_color_highlight ;

__attribute__((used)) static void Action_Draw( menuaction_s *a )
{
 int x, y;
 int style;
 float* color;

 style = 0;
 color = menu_text_color;
 if ( a->generic.flags & QMF_GRAYED )
 {
  color = text_color_disabled;
 }
 else if (( a->generic.flags & QMF_PULSEIFFOCUS ) && ( a->generic.parent->cursor == a->generic.menuPosition ))
 {
  color = text_color_highlight;
  style = UI_PULSE;
 }
 else if (( a->generic.flags & QMF_HIGHLIGHT_IF_FOCUS ) && ( a->generic.parent->cursor == a->generic.menuPosition ))
 {
  color = text_color_highlight;
 }
 else if ( a->generic.flags & QMF_BLINK )
 {
  style = UI_BLINK;
  color = text_color_highlight;
 }

 x = a->generic.x;
 y = a->generic.y;

 UI_DrawString( x, y, a->generic.name, UI_LEFT|style, color );

 if ( a->generic.parent->cursor == a->generic.menuPosition )
 {

  UI_DrawChar( x - BIGCHAR_WIDTH, y, 13, UI_LEFT|UI_BLINK, color);
 }
}
