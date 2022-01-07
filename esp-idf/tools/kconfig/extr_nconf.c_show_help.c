
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {int dummy; } ;
struct gstr {int dummy; } ;


 int _ (int ) ;
 int main_window ;
 int menu_get_ext_help (struct menu*,struct gstr*) ;
 int menu_get_prompt (struct menu*) ;
 int show_scroll_win (int ,int ,int ) ;
 int str_free (struct gstr*) ;
 int str_get (struct gstr*) ;
 struct gstr str_new () ;

__attribute__((used)) static void show_help(struct menu *menu)
{
 struct gstr help;

 if (!menu)
  return;

 help = str_new();
 menu_get_ext_help(menu, &help);
 show_scroll_win(main_window, _(menu_get_prompt(menu)), str_get(&help));
 str_free(&help);
}
