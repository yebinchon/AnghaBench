
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;


 int G_FILE_TEST_IS_REGULAR ;
 scalar_t__ g_file_test (int *,int ) ;
 int g_free (int *) ;
 int * g_strdup_printf (char*,int *,int const*) ;
 int g_unlink (int *) ;
 int * ghb_get_user_config_dir (int *) ;

__attribute__((used)) static void
remove_config_file(const gchar *name)
{
    gchar *config, *path;

    config = ghb_get_user_config_dir(((void*)0));
    path = g_strdup_printf ("%s/%s", config, name);
    if (g_file_test(path, G_FILE_TEST_IS_REGULAR))
    {
        g_unlink(path);
    }
    g_free(path);
    g_free(config);
}
