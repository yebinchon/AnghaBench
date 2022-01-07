
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 char* hb_filter_settings_string (int,int *) ;
 int hb_value_free (int **) ;
 int * hb_value_json (char const*) ;

char * hb_filter_settings_string_json(int filter_id, const char * json)
{
    hb_value_t * value = hb_value_json(json);
    char * result = hb_filter_settings_string(filter_id, value);
    hb_value_free(&value);

    return result;
}
