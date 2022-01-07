
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_value_t ;
struct TYPE_3__ {char* settings_template; } ;
typedef TYPE_1__ hb_filter_object_t ;
typedef int hb_dict_t ;


 int free (char*) ;
 int hb_dict_get (int *,char const*) ;
 int * hb_dict_init () ;
 int hb_dict_set (int *,char const*,int ) ;
 TYPE_1__* hb_filter_get (int) ;
 char* hb_filter_settings_string (int,int *) ;
 int hb_log (char*,int) ;
 int hb_str_vfree (char**) ;
 char** hb_str_vsplit (char*,char) ;
 char* hb_value_get_string_xform (int ) ;
 int hb_value_string (char*) ;

__attribute__((used)) static void import_custom_11_1_0(hb_value_t * preset, int filter_id,
                                 const char * key)
{
    char *str = hb_value_get_string_xform(hb_dict_get(preset, key));
    if (str == ((void*)0))
    {
        return;
    }
    hb_filter_object_t * filter = hb_filter_get(filter_id);
    if (filter == ((void*)0))
    {
        hb_log("import_custom_11_1_0: invalid filter id %d\n", filter_id);
        return;
    }
    if (filter->settings_template == ((void*)0))
    {
        return;
    }
    char ** values = hb_str_vsplit(str, ':');
    char ** tmpl = hb_str_vsplit(filter->settings_template, ':');
    int ii;

    free(str);
    hb_dict_t * dict = hb_dict_init();
    for (ii = 0; values[ii] != ((void*)0); ii++)
    {
        if (tmpl[ii] == ((void*)0))
        {

            break;
        }
        char ** pair = hb_str_vsplit(tmpl[ii], '=');
        if (pair[0] != ((void*)0))
        {
            hb_dict_set(dict, pair[0], hb_value_string(values[ii]));
        }
        hb_str_vfree(pair);
    }
    hb_str_vfree(tmpl);
    hb_str_vfree(values);

    char * result = hb_filter_settings_string(filter_id, dict);
    hb_dict_set(preset, key, hb_value_string(result));
    free(result);
}
