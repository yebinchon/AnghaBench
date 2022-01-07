
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct gstr {int dummy; } ;


 int CONFIG_ ;
 int _ (char*) ;
 char* dialog_input_result ;
 int dialog_input_result_len ;
 int dialog_inputbox (int ,int ,int ,char*,char**,int *) ;
 int free (struct symbol**) ;
 struct gstr get_relations_str (struct symbol**,int *) ;
 int main_window ;
 int search_help ;
 int show_scroll_win (int ,int ,int ) ;
 int str_free (struct gstr*) ;
 int str_get (struct gstr*) ;
 struct gstr str_new () ;
 int str_printf (struct gstr*,int ,int ) ;
 int strlen (int ) ;
 scalar_t__ strncasecmp (char*,int ,int ) ;
 struct symbol** sym_re_search (char*) ;

__attribute__((used)) static void search_conf(void)
{
 struct symbol **sym_arr;
 struct gstr res;
 struct gstr title;
 char *dialog_input;
 int dres;

 title = str_new();
 str_printf( &title, _("Enter (sub)string or regexp to search for "
         "(with or without \"%s\")"), CONFIG_);

again:
 dres = dialog_inputbox(main_window,
   _("Search Configuration Parameter"),
   str_get(&title),
   "", &dialog_input_result, &dialog_input_result_len);
 switch (dres) {
 case 0:
  break;
 case 1:
  show_scroll_win(main_window,
    _("Search Configuration"), search_help);
  goto again;
 default:
  str_free(&title);
  return;
 }


 dialog_input = dialog_input_result;
 if (strncasecmp(dialog_input_result, CONFIG_, strlen(CONFIG_)) == 0)
  dialog_input += strlen(CONFIG_);

 sym_arr = sym_re_search(dialog_input);
 res = get_relations_str(sym_arr, ((void*)0));
 free(sym_arr);
 show_scroll_win(main_window,
   _("Search Results"), str_get(&res));
 str_free(&res);
 str_free(&title);
}
