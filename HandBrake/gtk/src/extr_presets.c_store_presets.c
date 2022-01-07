
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int gchar ;


 int g_free (int *) ;
 int * g_strdup_printf (char*,int *,char*) ;
 int * ghb_get_user_config_dir (int *) ;
 int * hb_presets_get () ;
 int hb_presets_write_json (int *,int *) ;

__attribute__((used)) static void
store_presets()
{
    gchar *config, *path;
    hb_value_t *presets;

    config = ghb_get_user_config_dir(((void*)0));
    path = g_strdup_printf ("%s/%s", config, "presets.json");
    presets = hb_presets_get();
    hb_presets_write_json(presets, path);
    g_free(config);
    g_free(path);
}
