
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_6__ {int x; int y; size_t id; int flags; scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; int parent; } ;
struct TYPE_7__ {TYPE_1__ generic; } ;
typedef TYPE_2__ menuaction_s ;
struct TYPE_9__ {int bind1; int bind2; char* label; } ;
struct TYPE_8__ {scalar_t__ waitingforkey; } ;


 TYPE_2__* Menu_ItemAtCursor (int ) ;
 int QMF_GRAYED ;
 int Q_strupr (char*) ;
 double SCREEN_HEIGHT ;
 double SCREEN_WIDTH ;
 int SMALLCHAR_WIDTH ;
 int UI_BLINK ;
 int UI_CENTER ;
 int UI_DrawChar (int,int,int,int,int ) ;
 int UI_DrawString (int,int,char*,int,int ) ;
 int UI_FillRect (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int UI_LEFT ;
 int UI_PULSE ;
 int UI_RIGHT ;
 int UI_SMALLFONT ;
 int colorWhite ;
 int controls_binding_color ;
 TYPE_4__* g_bindings ;
 int listbar_color ;
 TYPE_3__ s_controls ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int text_color_disabled ;
 int text_color_highlight ;
 int trap_Key_KeynumToStringBuf (int,char*,int) ;

__attribute__((used)) static void Controls_DrawKeyBinding( void *self )
{
 menuaction_s* a;
 int x;
 int y;
 int b1;
 int b2;
 qboolean c;
 char name[32];
 char name2[32];

 a = (menuaction_s*) self;

 x = a->generic.x;
 y = a->generic.y;

 c = (Menu_ItemAtCursor( a->generic.parent ) == a);

 b1 = g_bindings[a->generic.id].bind1;
 if (b1 == -1)
  strcpy(name,"???");
 else
 {
  trap_Key_KeynumToStringBuf( b1, name, 32 );
  Q_strupr(name);

  b2 = g_bindings[a->generic.id].bind2;
  if (b2 != -1)
  {
   trap_Key_KeynumToStringBuf( b2, name2, 32 );
   Q_strupr(name2);

   strcat( name, " or " );
   strcat( name, name2 );
  }
 }

 if (c)
 {
  UI_FillRect( a->generic.left, a->generic.top, a->generic.right-a->generic.left+1, a->generic.bottom-a->generic.top+1, listbar_color );

  UI_DrawString( x - SMALLCHAR_WIDTH, y, g_bindings[a->generic.id].label, UI_RIGHT|UI_SMALLFONT, text_color_highlight );
  UI_DrawString( x + SMALLCHAR_WIDTH, y, name, UI_LEFT|UI_SMALLFONT|UI_PULSE, text_color_highlight );

  if (s_controls.waitingforkey)
  {
   UI_DrawChar( x, y, '=', UI_CENTER|UI_BLINK|UI_SMALLFONT, text_color_highlight);
   UI_DrawString(SCREEN_WIDTH * 0.50, SCREEN_HEIGHT * 0.80, "Waiting for new key ... ESCAPE to cancel", UI_SMALLFONT|UI_CENTER|UI_PULSE, colorWhite );
  }
  else
  {
   UI_DrawChar( x, y, 13, UI_CENTER|UI_BLINK|UI_SMALLFONT, text_color_highlight);
   UI_DrawString(SCREEN_WIDTH * 0.50, SCREEN_HEIGHT * 0.78, "Press ENTER or CLICK to change", UI_SMALLFONT|UI_CENTER, colorWhite );
   UI_DrawString(SCREEN_WIDTH * 0.50, SCREEN_HEIGHT * 0.82, "Press BACKSPACE to clear", UI_SMALLFONT|UI_CENTER, colorWhite );
  }
 }
 else
 {
  if (a->generic.flags & QMF_GRAYED)
  {
   UI_DrawString( x - SMALLCHAR_WIDTH, y, g_bindings[a->generic.id].label, UI_RIGHT|UI_SMALLFONT, text_color_disabled );
   UI_DrawString( x + SMALLCHAR_WIDTH, y, name, UI_LEFT|UI_SMALLFONT, text_color_disabled );
  }
  else
  {
   UI_DrawString( x - SMALLCHAR_WIDTH, y, g_bindings[a->generic.id].label, UI_RIGHT|UI_SMALLFONT, controls_binding_color );
   UI_DrawString( x + SMALLCHAR_WIDTH, y, name, UI_LEFT|UI_SMALLFONT, controls_binding_color );
  }
 }
}
