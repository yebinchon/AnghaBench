
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_dict_t ;


 int free (char*) ;
 int hb_dict_case_set (int *,char*,int *) ;
 int * hb_dict_init () ;
 int hb_log (char*,char const*) ;
 int hb_str_vfree (char**) ;
 char** hb_str_vsplit (char const*,char) ;
 int hb_value_free (int **) ;
 int * hb_value_string (char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;

hb_dict_t * hb_parse_filter_settings(const char * settings_str)
{
    hb_dict_t * dict = hb_dict_init();
    char ** settings_list = hb_str_vsplit(settings_str, ':');
    int ii;

    for (ii = 0; settings_list[ii] != ((void*)0); ii++)
    {
        char * key, * value;
        char ** settings_pair = hb_str_vsplit(settings_list[ii], '=');
        if (settings_pair[0] == ((void*)0) || settings_pair[1] == ((void*)0))
        {

            hb_str_vfree(settings_list);
            hb_str_vfree(settings_pair);
            hb_value_free(&dict);
            hb_log("hb_parse_filter_settings: Error parsing (%s)",
                   settings_str);
            return ((void*)0);
        }
        key = settings_pair[0];
        value = settings_pair[1];

        int last = strlen(value) - 1;



        if (last > 0 && value[0] == '\'' && value[last] == '\'')
        {
            char * str = strdup(value + 1);
            str[last - 1] = 0;
            hb_dict_t * sub_dict = hb_parse_filter_settings(str);
            free(str);
            if (sub_dict == ((void*)0))
            {

                hb_str_vfree(settings_list);
                hb_str_vfree(settings_pair);
                hb_value_free(&dict);
                hb_log("hb_parse_filter_settings: Error parsing (%s)",
                       settings_str);
                return ((void*)0);
            }
            hb_dict_case_set(dict, key, sub_dict);
        }

        else if (last > 0 && value[0] == '"' && value[last] == '"')
        {
            char * str = strdup(value + 1);
            str[last - 1] = 0;
            hb_dict_case_set(dict, key, hb_value_string(str));
            free(str);
        }
        else
        {
            hb_dict_case_set(dict, key, hb_value_string(value));
        }

        hb_str_vfree(settings_pair);
    }
    hb_str_vfree(settings_list);

    return dict;
}
