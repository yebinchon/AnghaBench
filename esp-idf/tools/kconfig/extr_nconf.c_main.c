
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESCDELAY ;
 scalar_t__ FALSE ;
 int KEY_F (int) ;
 int LC_ALL ;
 int LOCALEDIR ;
 size_t MAIN_MENU_BACK ;
 size_t MAIN_MENU_FORE ;
 size_t MAIN_MENU_GREY ;
 int O_IGNORECASE ;
 int O_NONCYCLIC ;
 int O_ONEVALUE ;
 int O_SHOWDESC ;
 int O_SHOWMATCH ;
 int PACKAGE ;
 int TRUE ;
 int _ (char*) ;
 int * attributes ;
 int bindtextdomain (int ,int ) ;
 int cbreak () ;
 int clear () ;
 int conf (int *) ;
 int conf_get_configname () ;
 int * conf_message_callback ;
 int conf_parse (char*) ;
 int conf_read (int *) ;
 int conf_set_message_callback (int *) ;
 int curs_set (int ) ;
 int curses_menu ;
 int curses_menu_items ;
 int delwin (int ) ;
 scalar_t__ do_exit () ;
 int endwin () ;
 int free_menu (int ) ;
 char* getenv (char*) ;
 int getmaxyx (int ,int,int) ;
 int global_exit ;
 scalar_t__ has_key (int ) ;
 int initscr () ;
 int keypad (int ,int ) ;
 int main_window ;
 char* menu_no_f_instructions ;
 int menu_opts_off (int ,int ) ;
 int menu_opts_on (int ,int ) ;
 int new_menu (int ) ;
 int noecho () ;
 int notimeout (int ,scalar_t__) ;
 int printf (char*) ;
 int refresh () ;
 int rootmenu ;
 int set_colors () ;
 int set_config_filename (int ) ;
 int set_escdelay (int) ;
 int set_menu_back (int ,int ) ;
 int set_menu_fore (int ,int ) ;
 int set_menu_grey (int ,int ) ;
 int set_menu_mark (int ,char*) ;
 int setlocale (int ,char*) ;
 int setup_windows () ;
 int show_scroll_win (int ,int ,int ) ;
 int single_menu_mode ;
 int stdscr ;
 int strcasecmp (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int textdomain (int ) ;
 int unpost_menu (int ) ;

int main(int ac, char **av)
{
 int lines, columns;
 char *mode;

 setlocale(LC_ALL, "");
 bindtextdomain(PACKAGE, LOCALEDIR);
 textdomain(PACKAGE);

 if (ac > 1 && strcmp(av[1], "-s") == 0) {

  conf_set_message_callback(((void*)0));
  av++;
 }
 conf_parse(av[1]);
 conf_read(((void*)0));

 mode = getenv("NCONFIG_MODE");
 if (mode) {
  if (!strcasecmp(mode, "single_menu"))
   single_menu_mode = 1;
 }


 initscr();

 set_colors();

 cbreak();
 noecho();
 keypad(stdscr, TRUE);
 curs_set(0);

 getmaxyx(stdscr, lines, columns);
 if (columns < 75 || lines < 20) {
  endwin();
  printf("Your terminal should have at "
   "least 20 lines and 75 columns\n");
  return 1;
 }

 notimeout(stdscr, FALSE);



 ESCDELAY = 1;



 curses_menu = new_menu(curses_menu_items);
 menu_opts_off(curses_menu, O_SHOWDESC);
 menu_opts_on(curses_menu, O_SHOWMATCH);
 menu_opts_on(curses_menu, O_ONEVALUE);
 menu_opts_on(curses_menu, O_NONCYCLIC);
 menu_opts_on(curses_menu, O_IGNORECASE);
 set_menu_mark(curses_menu, " ");
 set_menu_fore(curses_menu, attributes[MAIN_MENU_FORE]);
 set_menu_back(curses_menu, attributes[MAIN_MENU_BACK]);
 set_menu_grey(curses_menu, attributes[MAIN_MENU_GREY]);

 set_config_filename(conf_get_configname());
 setup_windows();


 if (has_key(KEY_F(1)) == FALSE) {
  show_scroll_win(main_window,
    _("Instructions"),
    _(menu_no_f_instructions));
 }

 conf_set_message_callback(conf_message_callback);

 while (!global_exit) {
  conf(&rootmenu);
  if (!global_exit && do_exit() == 0)
   break;
 }

 unpost_menu(curses_menu);
 free_menu(curses_menu);
 delwin(main_window);
 clear();
 refresh();
 endwin();
 return 0;
}
