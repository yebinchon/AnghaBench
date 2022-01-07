
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cursor_size; float margins_screen_top; float icon_size; } ;
typedef TYPE_1__ stripes_handle_t ;
typedef int settings_t ;
struct TYPE_7__ {scalar_t__ type; float y; } ;
typedef TYPE_2__ menu_input_pointer_t ;
typedef float int16_t ;


 int MENU_ANIMATION_CTL_CLEAR_ACTIVE ;
 int MENU_ENTRIES_CTL_SET_START ;
 int MENU_ENTRIES_CTL_START_GET ;
 scalar_t__ MENU_POINTER_DISABLED ;
 scalar_t__ MENU_POINTER_MOUSE ;
 int * config_get_ptr () ;
 int menu_animation_ctl (int ,int *) ;
 int menu_entries_ctl (int ,size_t*) ;
 int menu_entries_get_size () ;
 int menu_input_get_pointer_state (TYPE_2__*) ;
 int menu_input_set_pointer_selection (size_t) ;
 size_t menu_navigation_get_selection () ;
 int stripes_calculate_visible_range (TYPE_1__*,unsigned int,unsigned int,size_t,unsigned int*,unsigned int*) ;
 float stripes_item_y (TYPE_1__*,int,size_t) ;

__attribute__((used)) static void stripes_render(void *data,
      unsigned width, unsigned height,
      bool is_idle)
{
   size_t i;
   menu_input_pointer_t pointer;
   settings_t *settings = config_get_ptr();
   stripes_handle_t *stripes = (stripes_handle_t*)data;
   unsigned end = (unsigned)menu_entries_get_size();

   if (!stripes)
      return;

   menu_input_get_pointer_state(&pointer);

   if (pointer.type != MENU_POINTER_DISABLED)
   {
      size_t selection = menu_navigation_get_selection();
      int16_t pointer_y = pointer.y;
      unsigned first = 0, last = end;

      pointer_y = (pointer.type == MENU_POINTER_MOUSE) ?
            pointer_y + (stripes->cursor_size/2) : pointer_y;

      if (height)
         stripes_calculate_visible_range(stripes, height,
               end, selection, &first, &last);

      for (i = first; i <= last; i++)
      {
         float item_y1 = stripes->margins_screen_top
            + stripes_item_y(stripes, (int)i, selection);
         float item_y2 = item_y1 + stripes->icon_size;

         if (pointer_y > item_y1 && pointer_y < item_y2)
            menu_input_set_pointer_selection(i);
      }
   }

   menu_entries_ctl(MENU_ENTRIES_CTL_START_GET, &i);

   if (i >= end)
   {
      i = 0;
      menu_entries_ctl(MENU_ENTRIES_CTL_SET_START, &i);
   }

   menu_animation_ctl(MENU_ANIMATION_CTL_CLEAR_ACTIVE, ((void*)0));
}
