
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curses_menu ;
 int * curses_menu_items ;
 int item_count (int ) ;
 int main_window ;
 int max (int,int ) ;
 int mwin_max_lines ;
 int post_menu (int ) ;
 int refresh_all_windows (int ) ;
 int set_current_item (int ,int ) ;
 int set_top_row (int ,int) ;
 int top_row (int ) ;

__attribute__((used)) static void center_item(int selected_index, int *last_top_row)
{
 int toprow;

 set_top_row(curses_menu, *last_top_row);
 toprow = top_row(curses_menu);
 if (selected_index < toprow ||
     selected_index >= toprow+mwin_max_lines) {
  toprow = max(selected_index-mwin_max_lines/2, 0);
  if (toprow >= item_count(curses_menu)-mwin_max_lines)
   toprow = item_count(curses_menu)-mwin_max_lines;
  set_top_row(curses_menu, toprow);
 }
 set_current_item(curses_menu,
   curses_menu_items[selected_index]);
 *last_top_row = toprow;
 post_menu(curses_menu);
 refresh_all_windows(main_window);
}
