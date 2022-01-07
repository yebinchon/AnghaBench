
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cursor_prev; int nitems; scalar_t__* items; scalar_t__ cursor; } ;
typedef TYPE_1__ menuframework_s ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_2__ menucommon_s ;
struct TYPE_8__ {int menusp; void* firstdraw; TYPE_1__* activemenu; TYPE_1__** stack; } ;


 int KEYCATCH_UI ;
 int MAX_MENUDEPTH ;
 int Menu_SetCursor (TYPE_1__*,int) ;
 int QMF_GRAYED ;
 int QMF_INACTIVE ;
 int QMF_MOUSEONLY ;
 void* m_entersound ;
 void* qtrue ;
 int trap_Error (char*) ;
 int trap_Key_SetCatcher (int ) ;
 TYPE_3__ uis ;

void UI_PushMenu( menuframework_s *menu )
{
 int i;
 menucommon_s* item;


 for (i=0 ; i<uis.menusp ; i++)
 {
  if (uis.stack[i] == menu)
  {
   uis.menusp = i;
   break;
  }
 }

 if (i == uis.menusp)
 {
  if (uis.menusp >= MAX_MENUDEPTH)
   trap_Error("UI_PushMenu: menu stack overflow");

  uis.stack[uis.menusp++] = menu;
 }

 uis.activemenu = menu;


 menu->cursor = 0;
 menu->cursor_prev = 0;

 m_entersound = qtrue;

 trap_Key_SetCatcher( KEYCATCH_UI );


 for (i=0; i<menu->nitems; i++)
 {
  item = (menucommon_s *)menu->items[i];
  if (!(item->flags & (QMF_GRAYED|QMF_MOUSEONLY|QMF_INACTIVE)))
  {
   menu->cursor_prev = -1;
   Menu_SetCursor( menu, i );
   break;
  }
 }

 uis.firstdraw = qtrue;
}
