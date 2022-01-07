
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chassis_options_t ;
typedef int GOptionEntry ;
typedef int GOptionContext ;
typedef int GError ;


 scalar_t__ FALSE ;
 int TRUE ;
 int chassis_options_free (int *) ;
 int * chassis_options_new () ;
 int chassis_options_set_cmdline_only_options (int *,int*,char**) ;
 int * chassis_options_to_g_option_entries (int *) ;
 int g_free (int *) ;
 int g_option_context_add_main_entries (int *,int *,int *) ;
 scalar_t__ g_option_context_parse (int *,int*,char***,int **) ;
 int g_option_context_set_help_enabled (int *,scalar_t__) ;
 int g_option_context_set_ignore_unknown_options (int *,int ) ;

int chassis_frontend_init_base_options(GOptionContext *option_ctx,
  int *argc_p, char ***argv_p,
  int *print_version,
  char **config_file,
  GError **gerr) {
 chassis_options_t *opts;
 GOptionEntry *base_main_entries;
 int ret = 0;

 opts = chassis_options_new();
 chassis_options_set_cmdline_only_options(opts, print_version, config_file);
 base_main_entries = chassis_options_to_g_option_entries(opts);

 g_option_context_add_main_entries(option_ctx, base_main_entries, ((void*)0));
 g_option_context_set_help_enabled(option_ctx, FALSE);
 g_option_context_set_ignore_unknown_options(option_ctx, TRUE);

 if (FALSE == g_option_context_parse(option_ctx, argc_p, argv_p, gerr)) {
  ret = -1;
 }


 g_free(base_main_entries);
 chassis_options_free(opts);

 return ret;
}
