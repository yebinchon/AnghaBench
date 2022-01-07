
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ sfxHandle_t ;
typedef int menuslider_s ;
typedef int menuradiobutton_s ;
typedef int menulist_s ;
struct TYPE_11__ {int cursor; int cursor_prev; int nitems; } ;
typedef TYPE_1__ menuframework_s ;
typedef int menufield_s ;
struct TYPE_12__ {int flags; int type; } ;
typedef TYPE_2__ menucommon_s ;
struct TYPE_13__ {int debug; } ;


 int EXEC_APPEND ;
 scalar_t__ MenuField_Key (int *,int*) ;
 scalar_t__ Menu_ActivateItem (TYPE_1__*,TYPE_2__*) ;
 int Menu_AdjustCursor (TYPE_1__*,int) ;
 int Menu_CursorMoved (TYPE_1__*) ;
 TYPE_2__* Menu_ItemAtCursor (TYPE_1__*) ;
 int QMF_GRAYED ;
 int QMF_HASMOUSEFOCUS ;
 int QMF_INACTIVE ;
 int QMF_MOUSEONLY ;
 scalar_t__ RadioButton_Key (int *,int) ;
 scalar_t__ ScrollList_Key (int *,int) ;
 scalar_t__ Slider_Key (int *,int) ;
 scalar_t__ SpinControl_Key (int *,int) ;
 int UI_PopMenu () ;
 scalar_t__ menu_move_sound ;
 scalar_t__ menu_out_sound ;
 int trap_Cmd_ExecuteText (int ,char*) ;
 TYPE_3__ uis ;

sfxHandle_t Menu_DefaultKey( menuframework_s *m, int key )
{
 sfxHandle_t sound = 0;
 menucommon_s *item;
 int cursor_prev;


 switch ( key )
 {
  case 136:
  case 147:
   UI_PopMenu();
   return menu_out_sound;
 }

 if (!m || !m->nitems)
  return 0;


 item = Menu_ItemAtCursor( m );
 if (item && !(item->flags & (QMF_GRAYED|QMF_INACTIVE)))
 {
  switch (item->type)
  {
   case 128:
    sound = SpinControl_Key( (menulist_s*)item, key );
    break;

   case 131:
    sound = RadioButton_Key( (menuradiobutton_s*)item, key );
    break;

   case 129:
    sound = Slider_Key( (menuslider_s*)item, key );
    break;

   case 130:
    sound = ScrollList_Key( (menulist_s*)item, key );
    break;

   case 132:
    sound = MenuField_Key( (menufield_s*)item, &key );
    break;
  }

  if (sound) {

   return sound;
  }
 }


 switch ( key )
 {

  case 146:
   uis.debug ^= 1;
   break;

  case 145:
   trap_Cmd_ExecuteText(EXEC_APPEND, "screenshot\n");
   break;

  case 138:
  case 133:
   cursor_prev = m->cursor;
   m->cursor_prev = m->cursor;
   m->cursor--;
   Menu_AdjustCursor( m, -1 );
   if ( cursor_prev != m->cursor ) {
    Menu_CursorMoved( m );
    sound = menu_move_sound;
   }
   break;

  case 134:
  case 140:
  case 149:
   cursor_prev = m->cursor;
   m->cursor_prev = m->cursor;
   m->cursor++;
   Menu_AdjustCursor( m, 1 );
   if ( cursor_prev != m->cursor ) {
    Menu_CursorMoved( m );
    sound = menu_move_sound;
   }
   break;

  case 137:
  case 135:
   if (item)
    if ((item->flags & QMF_HASMOUSEFOCUS) && !(item->flags & (QMF_GRAYED|QMF_INACTIVE)))
     return (Menu_ActivateItem( m, item ));
   break;

  case 144:
  case 143:
  case 142:
  case 141:
  case 165:
  case 157:
  case 156:
  case 155:
  case 154:
  case 153:
  case 152:
  case 151:
  case 150:
  case 164:
  case 163:
  case 162:
  case 161:
  case 160:
  case 159:
  case 158:
  case 139:
  case 148:
   if (item)
    if (!(item->flags & (QMF_MOUSEONLY|QMF_GRAYED|QMF_INACTIVE)))
     return (Menu_ActivateItem( m, item ));
   break;
 }

 return sound;
}
