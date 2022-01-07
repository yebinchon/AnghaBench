
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t scroll_y; } ;
typedef TYPE_1__ rgui_t ;
struct TYPE_6__ {int height; } ;


 size_t FONT_HEIGHT_STRIDE ;
 int MENU_ENTRIES_CTL_SET_START ;
 int menu_entries_ctl (int ,size_t*) ;
 size_t menu_entries_get_size () ;
 size_t menu_navigation_get_selection () ;
 int rgui_scan_selected_entry_thumbnail (TYPE_1__*,int) ;
 TYPE_3__ rgui_term_layout ;
 int rgui_update_menu_sublabel (TYPE_1__*) ;

__attribute__((used)) static void rgui_navigation_set(void *data, bool scroll)
{
   size_t start;
   bool do_set_start = 0;
   size_t end = menu_entries_get_size();
   size_t selection = menu_navigation_get_selection();
   rgui_t *rgui = (rgui_t*)data;

   if (!rgui)
      return;

   rgui_scan_selected_entry_thumbnail(rgui, 0);
   rgui_update_menu_sublabel(rgui);

   if (!scroll)
      return;

   if (selection < rgui_term_layout.height /2)
   {
      start = 0;
      do_set_start = 1;
   }
   else if (selection >= (rgui_term_layout.height /2)
         && selection < (end - rgui_term_layout.height /2))
   {
      start = selection - rgui_term_layout.height /2;
      do_set_start = 1;
   }
   else if (selection >= (end - rgui_term_layout.height /2))
   {
      start = end - rgui_term_layout.height;
      do_set_start = 1;
   }

   if (do_set_start)
   {
      menu_entries_ctl(MENU_ENTRIES_CTL_SET_START, &start);
      rgui->scroll_y = start * FONT_HEIGHT_STRIDE;
   }
}
