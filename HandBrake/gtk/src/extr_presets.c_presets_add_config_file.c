
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int gchar ;


 int G_FILE_TEST_IS_REGULAR ;
 int g_file_test (int *,int ) ;
 int g_free (int *) ;
 int * g_strdup_printf (char*,int *,int,...) ;
 int * ghb_get_user_config_dir (int *) ;
 int hb_presets_add (int *) ;
 int hb_presets_builtin_update () ;
 int hb_presets_current_version (int*,int*,int*) ;
 int hb_presets_import (int *,int **) ;
 int * hb_presets_read_file (int *) ;
 int hb_presets_version (int *,int*,int*,int*) ;
 int hb_value_free (int **) ;
 int hb_value_write_json (int *,int *) ;
 int store_presets () ;

__attribute__((used)) static int
presets_add_config_file(const gchar *name)
{
    gchar *config, *path;
    hb_value_t *preset;

    config = ghb_get_user_config_dir(((void*)0));
    path = g_strdup_printf ("%s/%s", config, name);
    g_free(config);
    if (!g_file_test(path, G_FILE_TEST_IS_REGULAR))
        return -1;
    preset = hb_presets_read_file(path);
    g_free(path);
    if (preset != ((void*)0))
    {
        int hb_major, hb_minor, hb_micro;
        int major, minor, micro;
        hb_presets_version(preset, &major, &minor, &micro);
        hb_presets_current_version(&hb_major, &hb_minor, &hb_micro);
        if (major != hb_major)
        {

            config = ghb_get_user_config_dir(((void*)0));
            path = g_strdup_printf ("%s/presets.%d.%d.%d.json",
                            config, major, minor, micro);
            hb_value_write_json(preset, path);
            g_free(config);
            g_free(path);
        }

        if (major > hb_major)
        {



            hb_value_free(&preset);
            return -2;
        }

        hb_value_t *imported;
        hb_presets_import(preset, &imported);
        hb_presets_add(imported);
        if (major != hb_major || minor != hb_minor || micro != hb_micro)
        {

            hb_presets_builtin_update();
            store_presets();
        }
        hb_value_free(&imported);
        hb_value_free(&preset);
        return 0;
    }
    return -1;
}
