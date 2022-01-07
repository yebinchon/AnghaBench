
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int hb_validate_filter_settings (int,int *) ;
 int hb_value_free (int **) ;
 int * hb_value_json (char const*) ;

int hb_validate_filter_settings_json(int filter_id, const char * json)
{
    hb_value_t * value = hb_value_json(json);
    int result = hb_validate_filter_settings(filter_id, value);
    hb_value_free(&value);

    return result;
}
