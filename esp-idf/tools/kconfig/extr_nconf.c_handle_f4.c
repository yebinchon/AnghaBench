
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {int dummy; } ;


 int _ (char*) ;
 int btn_dialog (int ,int ,int,char*,char*) ;
 int main_window ;
 int show_all_items ;

__attribute__((used)) static void handle_f4(int *key, struct menu *current_item)
{
 int res = btn_dialog(main_window,
   _("Show all symbols?"),
   2,
   "   <Show All>   ",
   "<Don't show all>");
 if (res == 0)
  show_all_items = 1;
 else if (res == 1)
  show_all_items = 0;

 return;
}
