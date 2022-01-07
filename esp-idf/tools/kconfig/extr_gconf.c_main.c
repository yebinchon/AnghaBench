
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;



 int LOCALEDIR ;
 int PACKAGE ;


 int SRCTREE ;
 int bind_textdomain_codeset (int ,char*) ;
 int bindtextdomain (int ,int ) ;
 int conf_parse (char const*) ;
 int conf_read (int *) ;
 int conf_set_message_callback (int *) ;
 int display_list () ;
 int display_tree (int *) ;
 int display_tree_part () ;
 int exit (int ) ;
 int fixup_rootmenu (int *) ;
 int g_get_current_dir () ;
 int * g_strconcat (char*,char*,char*,...) ;
 char* getenv (int ) ;
 int glade_init () ;
 int gtk_init (int*,char***) ;
 int gtk_main () ;
 int gtk_set_locale () ;
 int init_left_tree () ;
 int init_main_window (int *) ;
 int init_right_tree () ;
 int init_tree_model () ;
 int printf (char*,char*) ;
 int rootmenu ;
 int textdomain (int ) ;
 int view_mode ;

int main(int ac, char *av[])
{
 const char *name;
 char *env;
 gchar *glade_file;

 bindtextdomain(PACKAGE, LOCALEDIR);
 bind_textdomain_codeset(PACKAGE, "UTF-8");
 textdomain(PACKAGE);


 gtk_set_locale();
 gtk_init(&ac, &av);
 glade_init();





 env = getenv(SRCTREE);
 if (env)
  glade_file = g_strconcat(env, "/scripts/kconfig/gconf.glade", ((void*)0));
 else if (av[0][0] == '/')
  glade_file = g_strconcat(av[0], ".glade", ((void*)0));
 else
  glade_file = g_strconcat(g_get_current_dir(), "/", av[0], ".glade", ((void*)0));


 if (ac > 1 && av[1][0] == '-') {
  switch (av[1][1]) {
  case 'a':

   break;
  case 's':
   conf_set_message_callback(((void*)0));
   break;
  case 'h':
  case '?':
   printf("%s [-s] <config>\n", av[0]);
   exit(0);
  }
  name = av[2];
 } else
  name = av[1];

 conf_parse(name);
 fixup_rootmenu(&rootmenu);
 conf_read(((void*)0));


 init_main_window(glade_file);
 init_tree_model();
 init_left_tree();
 init_right_tree();

 switch (view_mode) {
 case 129:
  display_tree_part();
  break;
 case 128:
  display_list();
  break;
 case 130:
  display_tree(&rootmenu);
  break;
 }

 gtk_main();

 return 0;
}
