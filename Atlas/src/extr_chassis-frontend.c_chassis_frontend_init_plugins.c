
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t guint ;
typedef int gchar ;
struct TYPE_5__ {int * option_grp_name; } ;
typedef TYPE_1__ chassis_plugin ;
struct TYPE_6__ {size_t len; TYPE_1__** pdata; } ;
typedef TYPE_2__ GPtrArray ;
typedef int GOptionGroup ;
typedef int GOptionEntry ;
typedef int GOptionContext ;
typedef int GKeyFile ;
typedef int GError ;


 scalar_t__ FALSE ;
 int chassis_keyfile_resolve_path (char const*,int *) ;
 scalar_t__ chassis_keyfile_to_options (int *,char const*,int *) ;
 int * chassis_plugin_get_options (TYPE_1__*) ;
 int g_free (int *) ;
 int g_option_context_add_group (int *,int *) ;
 scalar_t__ g_option_context_parse (int *,int*,char***,int **) ;
 int g_option_group_add_entries (int *,int *) ;
 int * g_option_group_new (int const*,int *,int *,int *,int *) ;
 int * g_strdup_printf (char*,int *) ;

int chassis_frontend_init_plugins(GPtrArray *plugins,
  GOptionContext *option_ctx,
  int *argc_p, char ***argv_p,
  GKeyFile *keyfile,
  const char *keyfile_section_name,
  const char *base_dir,
  GError **gerr) {
 guint i;

 for (i = 0; i < plugins->len; i++) {
  GOptionEntry *config_entries;
  chassis_plugin *p = plugins->pdata[i];

  if (((void*)0) != (config_entries = chassis_plugin_get_options(p))) {
   gchar *group_desc = g_strdup_printf("%s-module", p->option_grp_name);
   gchar *help_msg = g_strdup_printf("Show options for the %s-module", p->option_grp_name);
   const gchar *group_name = p->option_grp_name;

   GOptionGroup *option_grp = g_option_group_new(group_name, group_desc, help_msg, ((void*)0), ((void*)0));
   g_option_group_add_entries(option_grp, config_entries);
   g_option_context_add_group(option_ctx, option_grp);

   g_free(help_msg);
   g_free(group_desc);


   if (FALSE == g_option_context_parse(option_ctx, argc_p, argv_p, gerr)) {
    return -1;
   }

   if (keyfile) {
    if (chassis_keyfile_to_options(keyfile, keyfile_section_name, config_entries)) {
     return -1;
    }
   }


   chassis_keyfile_resolve_path(base_dir, config_entries);
  }
 }

 return 0;
}
