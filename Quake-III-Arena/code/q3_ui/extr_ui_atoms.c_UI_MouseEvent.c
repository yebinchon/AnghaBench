
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; scalar_t__ left; scalar_t__ right; scalar_t__ top; scalar_t__ bottom; } ;
typedef TYPE_1__ menucommon_s ;
struct TYPE_6__ {int nitems; int cursor; size_t cursor_prev; scalar_t__* items; } ;
struct TYPE_5__ {scalar_t__ cursorx; scalar_t__ cursory; TYPE_3__* activemenu; } ;


 int CHAN_LOCAL_SOUND ;
 int Menu_SetCursor (TYPE_3__*,int) ;
 int QMF_GRAYED ;
 int QMF_HASMOUSEFOCUS ;
 int QMF_INACTIVE ;
 int QMF_SILENT ;
 scalar_t__ SCREEN_HEIGHT ;
 scalar_t__ SCREEN_WIDTH ;
 int menu_move_sound ;
 int trap_S_StartLocalSound (int ,int ) ;
 TYPE_2__ uis ;

void UI_MouseEvent( int dx, int dy )
{
 int i;
 menucommon_s* m;

 if (!uis.activemenu)
  return;


 uis.cursorx += dx;
 if (uis.cursorx < 0)
  uis.cursorx = 0;
 else if (uis.cursorx > SCREEN_WIDTH)
  uis.cursorx = SCREEN_WIDTH;

 uis.cursory += dy;
 if (uis.cursory < 0)
  uis.cursory = 0;
 else if (uis.cursory > SCREEN_HEIGHT)
  uis.cursory = SCREEN_HEIGHT;


 for (i=0; i<uis.activemenu->nitems; i++)
 {
  m = (menucommon_s*)uis.activemenu->items[i];

  if (m->flags & (QMF_GRAYED|QMF_INACTIVE))
   continue;

  if ((uis.cursorx < m->left) ||
   (uis.cursorx > m->right) ||
   (uis.cursory < m->top) ||
   (uis.cursory > m->bottom))
  {

   continue;
  }


  if (uis.activemenu->cursor != i)
  {
   Menu_SetCursor( uis.activemenu, i );
   ((menucommon_s*)(uis.activemenu->items[uis.activemenu->cursor_prev]))->flags &= ~QMF_HASMOUSEFOCUS;

   if ( !(((menucommon_s*)(uis.activemenu->items[uis.activemenu->cursor]))->flags & QMF_SILENT ) ) {
    trap_S_StartLocalSound( menu_move_sound, CHAN_LOCAL_SOUND );
   }
  }

  ((menucommon_s*)(uis.activemenu->items[uis.activemenu->cursor]))->flags |= QMF_HASMOUSEFOCUS;
  return;
 }

 if (uis.activemenu->nitems > 0) {

  ((menucommon_s*)(uis.activemenu->items[uis.activemenu->cursor]))->flags &= ~QMF_HASMOUSEFOCUS;
 }
}
