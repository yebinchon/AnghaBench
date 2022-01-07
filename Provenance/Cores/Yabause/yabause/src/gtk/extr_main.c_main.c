
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gchar ;
struct TYPE_2__ {int cdcoretype; scalar_t__ sndcoretype; void* biospath; } ;


 int DEBUG_STDERR ;
 int GTK_WINDOW (int ) ;
 int G_FILE_TEST_EXISTS ;
 int G_KEY_FILE_NONE ;
 int LogChangeOutput (int ,int *) ;
 int LogStart () ;
 int LogStop () ;
 int MappedMemoryLoadExec (char*,unsigned int) ;
 int TRUE ;
 int YTSDIR ;
 int YUI_WINDOW (int ) ;
 int YabauseDeInit () ;
 int YuiLoadState () ;
 void* biospath ;
 void* cdpath ;
 int * g_build_filename (int ,char*,char*,...) ;
 int g_file_get_contents (int *,int **,int *,int *) ;
 int g_file_set_contents (int *,int *,int,int *) ;
 scalar_t__ g_file_test (int *,int ) ;
 int g_free (int *) ;
 int g_get_user_config_dir () ;
 int g_key_file_get_integer (int ,char*,char*,int ) ;
 int g_key_file_get_value (int ,char*,char*,int *) ;
 int g_key_file_load_from_file (int ,int *,int ,int ) ;
 int g_key_file_new () ;
 int g_mkdir_with_parents (int *,int) ;
 int g_strlcpy (void*,char*,int) ;
 int gtk_gl_init (int*,char***) ;
 int gtk_init (int*,char***) ;
 int gtk_main () ;
 int gtk_window_move (int ,int ,int ) ;
 int * inifile ;
 int keyfile ;
 int mini18n_set_domain (int ) ;
 int mini18n_set_locale (int ) ;
 int print_usage (char*) ;
 int sscanf (char*,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ strstr (char*,char*) ;
 TYPE_1__ yinit ;
 int yui ;
 int yui_new () ;
 int yui_settings_init () ;
 int yui_settings_load () ;
 int yui_window_run (int ) ;
 int yui_window_set_frameskip (int ,int) ;
 int yui_window_set_fullscreen (int ,int ) ;
 int yui_window_start (int ) ;

int main(int argc, char *argv[]) {

 int i;
 int autostart = 0;

 LogStart();
 LogChangeOutput( DEBUG_STDERR, ((void*)0) );
 inifile = g_build_filename(g_get_user_config_dir(), "yabause", "gtk", "yabause.ini", ((void*)0));

 if (! g_file_test(inifile, G_FILE_TEST_EXISTS)) {

  gchar * oldinifile = g_build_filename(g_get_user_config_dir(), "yabause.ini", ((void*)0));


  gchar * xdgpath = g_build_filename(g_get_user_config_dir(), "yabause", "gtk", ((void*)0));

  if (! g_file_test(xdgpath, G_FILE_TEST_EXISTS))
   g_mkdir_with_parents(xdgpath, 0755);
  g_free(xdgpath);

  if (g_file_test(oldinifile, G_FILE_TEST_EXISTS)) {

   gchar * data;

   g_file_get_contents(oldinifile, &data, ((void*)0), ((void*)0));
   g_file_set_contents(inifile, data, -1, ((void*)0));
  }

  g_free(oldinifile);
 }

 keyfile = g_key_file_new();

 gtk_init(&argc, &argv);




 yui_settings_init();







 yui = yui_new();

 yui_settings_load();

 gtk_window_move(GTK_WINDOW(yui), g_key_file_get_integer(keyfile, "Gtk", "X", 0), g_key_file_get_integer(keyfile, "Gtk", "Y", 0));



   for (i = 1; i < argc; ++i) {
      if (argv[i]) {

         if (0 == strcmp(argv[i], "-h") || 0 == strcmp(argv[i], "-?") || 0 == strcmp(argv[i], "--help")) {
            print_usage(argv[0]);
            return 0;
         }


         if (0 == strcmp(argv[i], "-b") && argv[i + 1]) {
            g_strlcpy(biospath, argv[i + 1], 256);
            yinit.biospath = biospath;
  } else if (strstr(argv[i], "--bios=")) {
            g_strlcpy(biospath, argv[i] + strlen("--bios="), 256);
            yinit.biospath = biospath;
  }

         else if (0 == strcmp(argv[i], "-i") && argv[i + 1]) {
            g_strlcpy(cdpath, argv[i + 1], 256);
     yinit.cdcoretype = 1;
  } else if (strstr(argv[i], "--iso=")) {
            g_strlcpy(cdpath, argv[i] + strlen("--iso="), 256);
     yinit.cdcoretype = 1;
  }

  else if (0 == strcmp(argv[i], "-c") && argv[i + 1]) {
            g_strlcpy(cdpath, argv[i + 1], 256);
     yinit.cdcoretype = 2;
  } else if (strstr(argv[i], "--cdrom=")) {
            g_strlcpy(cdpath, argv[i] + strlen("--cdrom="), 256);
     yinit.cdcoretype = 2;
  }

         else if (strcmp(argv[i], "-ns") == 0 || strcmp(argv[i], "--nosound") == 0) {
     yinit.sndcoretype = 0;
  }

  else if (strcmp(argv[i], "--autoload") == 0) {
            yui_window_start(YUI_WINDOW(yui));
            YuiLoadState();
            autostart = 1;
  }

  else if (strcmp(argv[i], "-a") == 0 || strcmp(argv[i], "--autostart") == 0) {
            autostart = 1;
  }

  else if (strcmp(argv[i], "-f") == 0 || strcmp(argv[i], "--fullscreen") == 0) {
            yui_window_set_fullscreen(YUI_WINDOW(yui), TRUE);
  }

         else if (strstr(argv[i], "--autoframeskip=")) {
            int fscount;
            int fsenable;
            fscount = sscanf(argv[i] + strlen("--autoframeskip="), "%d", &fsenable);
            if (fscount > 0)
               yui_window_set_frameskip(YUI_WINDOW(yui), fsenable);
         }

  else if (strstr(argv[i], "--binary=")) {
     char binname[1024];
     unsigned int binaddress;
     int bincount;

     bincount = sscanf(argv[i] + strlen("--binary="), "%[^:]:%x", binname, &binaddress);
     if (bincount > 0) {
        if (bincount < 2) binaddress = 0x06004000;

               yui_window_run(YUI_WINDOW(yui));
        MappedMemoryLoadExec(binname, binaddress);
     }
  }
      }
   }

   if (autostart) yui_window_run(YUI_WINDOW(yui));


 gtk_main ();

 YabauseDeInit();
 LogStop();

 return 0;
}
