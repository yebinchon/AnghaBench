
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int * hb_generate_filter_settings (int,char const*,char const*,char const*) ;
 int hb_value_free (int **) ;
 char* hb_value_get_json (int *) ;

char *
hb_generate_filter_settings_json(int filter_id, const char *preset,
                                 const char *tune, const char *custom)
{
    hb_value_t * settings;

    settings = hb_generate_filter_settings(filter_id, preset, tune, custom);
    if (settings == ((void*)0))
    {
        return ((void*)0);
    }

    char * result = hb_value_get_json(settings);
    hb_value_free(&settings);
    return result;
}
