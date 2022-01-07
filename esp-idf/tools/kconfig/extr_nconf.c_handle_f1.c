
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {int dummy; } ;


 int _ (char*) ;
 int main_window ;
 char* nconf_global_help ;
 int show_scroll_win (int ,int ,int ) ;

__attribute__((used)) static void handle_f1(int *key, struct menu *current_item)
{
 show_scroll_win(main_window,
   _("Global help"), _(nconf_global_help));
 return;
}
