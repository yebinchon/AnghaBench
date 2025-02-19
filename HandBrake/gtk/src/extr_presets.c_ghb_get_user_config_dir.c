
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t gint ;
typedef char const gchar ;


 int G_DIR_SEPARATOR_S ;
 int G_FILE_TEST_IS_DIR ;
 int g_file_test (char const*,int ) ;
 int g_free (char const*) ;
 char* g_get_home_dir () ;
 char* g_get_user_config_dir () ;
 int g_mkdir (char const*,int) ;
 char* g_strdup_printf (char*,char const*,char const*) ;
 int g_strfreev (char const**) ;
 char** g_strsplit (char const*,int ,int) ;
 char* override_user_config_dir ;

gchar *
ghb_get_user_config_dir(gchar *subdir)
{
    const gchar * dir, * ghb = "ghb";
    gchar * config;

    if (override_user_config_dir != ((void*)0))
    {
        dir = override_user_config_dir;
    }
    else
    {
        dir = g_get_user_config_dir();
    }
    if (dir == ((void*)0) || !g_file_test(dir, G_FILE_TEST_IS_DIR))
    {
        dir = g_get_home_dir();
        ghb = ".ghb";
    }
    if (dir == ((void*)0) || !g_file_test(dir, G_FILE_TEST_IS_DIR))
    {

        dir = "./";
        ghb = ".ghb";
    }
    config = g_strdup_printf("%s/%s", dir, ghb);
    if (!g_file_test(config, G_FILE_TEST_IS_DIR))
        g_mkdir (config, 0755);
    if (subdir)
    {
        gchar **split;
        gint ii;

        split = g_strsplit(subdir, G_DIR_SEPARATOR_S, -1);
        for (ii = 0; split[ii] != ((void*)0); ii++)
        {
            gchar *tmp;

            tmp = g_strdup_printf ("%s/%s", config, split[ii]);
            g_free(config);
            config = tmp;
            if (!g_file_test(config, G_FILE_TEST_IS_DIR))
                g_mkdir (config, 0755);
        }
        g_strfreev(split);
    }
    return config;
}
