
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {int dummy; } ;


 int _ (char*) ;
 char* current_instructions ;
 int main_window ;
 int show_scroll_win (int ,int ,int ) ;

__attribute__((used)) static void handle_f3(int *key, struct menu *current_item)
{
 show_scroll_win(main_window,
   _("Short help"),
   _(current_instructions));
 return;
}
