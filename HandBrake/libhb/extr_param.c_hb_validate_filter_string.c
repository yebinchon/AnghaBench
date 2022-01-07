
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_dict_t ;


 int * hb_parse_filter_settings (char const*) ;
 int hb_validate_filter_settings (int,int *) ;
 int hb_value_free (int **) ;

int hb_validate_filter_string(int filter_id, const char * filter_str)
{
    hb_dict_t * settings = hb_parse_filter_settings(filter_str);
    if (settings == ((void*)0))
    {
        return 1;
    }
    int result = hb_validate_filter_settings(filter_id, settings);
    hb_value_free(&settings);
    return result;
}
