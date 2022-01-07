
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int hb_value_t ;
struct TYPE_6__ {char const* settings; } ;
typedef TYPE_1__ hb_filter_param_t ;


 TYPE_1__* filter_param_get_entry (TYPE_1__*,char const*,int) ;
 TYPE_1__* filter_param_get_presets_internal (int,int*) ;
 TYPE_1__* filter_param_get_tunes_internal (int,int*) ;
 int hb_dict_merge (int *,int *) ;
 int * hb_parse_filter_settings (char const*) ;
 int hb_value_free (int **) ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static hb_value_t *
generate_generic_settings(int filter_id, const char * preset,
                          const char * tune, const char * custom)
{
    if ((preset == ((void*)0) || !strcasecmp(preset, "custom")))
    {
        return hb_parse_filter_settings(custom);
    }

    int count;
    hb_filter_param_t *table;
    hb_filter_param_t *entry;

    hb_value_t * settings = ((void*)0), * tune_settings = ((void*)0);

    table = filter_param_get_presets_internal(filter_id, &count);
    entry = filter_param_get_entry(table, preset, count);
    if (entry != ((void*)0) && entry->settings != ((void*)0))
    {
        settings = hb_parse_filter_settings(entry->settings);
        if (settings == ((void*)0))
        {
            return ((void*)0);
        }

        table = filter_param_get_tunes_internal(filter_id, &count);
        entry = filter_param_get_entry(table, tune, count);
        if (entry != ((void*)0) && entry->settings != ((void*)0))
        {
            tune_settings = hb_parse_filter_settings(entry->settings);
            if (tune_settings == ((void*)0))
            {
                hb_value_free(&settings);
                return ((void*)0);
            }
            hb_dict_merge(settings, tune_settings);
            hb_value_free(&tune_settings);
        }
    }

    return settings;
}
