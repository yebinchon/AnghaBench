
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_value_t ;
struct TYPE_3__ {int name; int * settings_template; } ;
typedef TYPE_1__ hb_filter_object_t ;
typedef int const hb_dict_t ;
typedef scalar_t__ hb_dict_iter_t ;


 scalar_t__ HB_DICT_ITER_DONE ;
 int free (char*) ;
 int * hb_dict_get (int const*,char const*) ;
 scalar_t__ hb_dict_iter_init (int const*) ;
 char* hb_dict_iter_key (scalar_t__) ;
 scalar_t__ hb_dict_iter_next (int const*,scalar_t__) ;
 TYPE_1__* hb_filter_get (int) ;
 int hb_log (char*,...) ;
 int const* hb_parse_filter_settings (int *) ;
 scalar_t__ hb_validate_param_string (char const*,char*) ;
 int hb_value_free (int const**) ;
 char* hb_value_get_string (int *) ;
 char* hb_value_get_string_xform (int *) ;

int hb_validate_filter_settings(int filter_id, const hb_dict_t * settings)
{
    hb_filter_object_t * filter;
    hb_dict_t * settings_template;
    hb_dict_iter_t iter;

    if (settings == ((void*)0))
        return 0;


    filter = hb_filter_get(filter_id);
    if (filter == ((void*)0))
    {
        hb_log("hb_validate_filter_settings: Unrecognized filter (%d).\n",
               filter_id);
        return 1;
    }
    if (filter->settings_template == ((void*)0))
    {

        return 0;
    }
    settings_template = hb_parse_filter_settings(filter->settings_template);
    if (settings_template == ((void*)0))
    {
        hb_log("hb_validate_filter_settings: invalid template!");
        return 0;
    }

    for (iter = hb_dict_iter_init(settings);
         iter != HB_DICT_ITER_DONE;
         iter = hb_dict_iter_next(settings, iter))
    {
        const char * key;
        hb_value_t * val;

        key = hb_dict_iter_key(iter);


        val = hb_dict_get(settings_template, key);
        if (val == ((void*)0))
        {

            hb_log("Invalid filter key (%s) for filter %s",
                    key, filter->name);
            return 1;
        }



        const char * regex_pattern = hb_value_get_string(val);
        if (regex_pattern != ((void*)0) && regex_pattern[0] != 0)
        {
            char * param;
            param = hb_value_get_string_xform(hb_dict_get(settings, key));
            if (hb_validate_param_string(regex_pattern, param) != 0)
            {
                hb_log("Invalid filter value (%s) for key %s filter %s",
                        param, key, filter->name);
                free(param);
                return 1;
            }
            free(param);
        }
    }
    hb_value_free(&settings_template);

    return 0;
}
