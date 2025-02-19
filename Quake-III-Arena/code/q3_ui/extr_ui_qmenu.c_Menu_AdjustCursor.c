
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_4__ {size_t cursor; size_t nitems; int cursor_prev; scalar_t__ wrapAround; scalar_t__* items; } ;
typedef TYPE_1__ menuframework_s ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_2__ menucommon_s ;


 int QMF_GRAYED ;
 int QMF_INACTIVE ;
 int QMF_MOUSEONLY ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

void Menu_AdjustCursor( menuframework_s *m, int dir ) {
 menucommon_s *item = ((void*)0);
 qboolean wrapped = qfalse;

wrap:
 while ( m->cursor >= 0 && m->cursor < m->nitems ) {
  item = ( menucommon_s * ) m->items[m->cursor];
  if (( item->flags & (QMF_GRAYED|QMF_MOUSEONLY|QMF_INACTIVE) ) ) {
   m->cursor += dir;
  }
  else {
   break;
  }
 }

 if ( dir == 1 ) {
  if ( m->cursor >= m->nitems ) {
   if ( m->wrapAround ) {
    if ( wrapped ) {
     m->cursor = m->cursor_prev;
     return;
    }
    m->cursor = 0;
    wrapped = qtrue;
    goto wrap;
   }
   m->cursor = m->cursor_prev;
  }
 }
 else {
  if ( m->cursor < 0 ) {
   if ( m->wrapAround ) {
    if ( wrapped ) {
     m->cursor = m->cursor_prev;
     return;
    }
    m->cursor = m->nitems - 1;
    wrapped = qtrue;
    goto wrap;
   }
   m->cursor = m->cursor_prev;
  }
 }
}
