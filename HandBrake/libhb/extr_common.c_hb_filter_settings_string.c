
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 scalar_t__ HB_VALUE_TYPE_ARRAY ;
 scalar_t__ HB_VALUE_TYPE_DICT ;
 scalar_t__ HB_VALUE_TYPE_NULL ;
 char* hb_value_get_string_xform (int *) ;
 scalar_t__ hb_value_type (int *) ;
 char* strdup (char*) ;
 char* stringify_array (int,int *) ;
 char* stringify_dict (int,int *) ;

char * hb_filter_settings_string(int filter_id, hb_value_t * value)
{
    if (value == ((void*)0) || hb_value_type(value) == HB_VALUE_TYPE_NULL)
    {
        return strdup("");
    }
    if (hb_value_type(value) == HB_VALUE_TYPE_DICT)
    {
        return stringify_dict(filter_id, value);
    }
    if (hb_value_type(value) == HB_VALUE_TYPE_ARRAY)
    {
        return stringify_array(filter_id, value);
    }
    return hb_value_get_string_xform(value);
}
