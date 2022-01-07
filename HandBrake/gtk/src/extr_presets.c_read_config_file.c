
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GhbValue ;


 int G_FILE_TEST_IS_REGULAR ;
 scalar_t__ g_file_test (int *,int ) ;
 int g_free (int *) ;
 int * g_strdup_printf (char*,int *,int const*) ;
 int * ghb_get_user_config_dir (int *) ;
 int * ghb_json_parse_file (int *) ;
 int * hb_plist_parse_file (int *) ;

__attribute__((used)) static GhbValue*
read_config_file(const gchar *name)
{
    gchar *config, *path;
    GhbValue *gval = ((void*)0);

    config = ghb_get_user_config_dir(((void*)0));
    path = g_strdup_printf ("%s/%s", config, name);
    g_free(config);
    if (g_file_test(path, G_FILE_TEST_IS_REGULAR))
    {
        gval = ghb_json_parse_file(path);
        if (gval == ((void*)0))
            gval = hb_plist_parse_file(path);
    }
    g_free(path);
    return gval;
}
