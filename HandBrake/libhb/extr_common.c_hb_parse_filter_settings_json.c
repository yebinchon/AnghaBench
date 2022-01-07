
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_dict_t ;


 int * hb_parse_filter_settings (char const*) ;
 int hb_value_free (int **) ;
 char* hb_value_get_json (int *) ;

char * hb_parse_filter_settings_json(const char * settings_str)
{
    hb_dict_t * dict = hb_parse_filter_settings(settings_str);
    char * result = hb_value_get_json(dict);
    hb_value_free(&dict);

    return result;
}
