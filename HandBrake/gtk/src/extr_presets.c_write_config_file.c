
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GhbValue ;


 int g_free (int *) ;
 int * g_strdup_printf (char*,int *,int const*) ;
 int * ghb_get_user_config_dir (int *) ;
 int ghb_json_write_file (int *,int *) ;

__attribute__((used)) static void
write_config_file(const gchar *name, GhbValue *dict)
{
    gchar *config, *path;

    config = ghb_get_user_config_dir(((void*)0));
    path = g_strdup_printf ("%s/%s", config, name);
    g_free(config);
    ghb_json_write_file(path, dict);
    g_free(path);
}
