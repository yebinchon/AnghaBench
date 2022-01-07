
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 scalar_t__ HB_VALUE_TYPE_STRING ;
 scalar_t__ hb_value_type (int const*) ;
 char const* json_string_value (int const*) ;

const char * hb_value_get_string(const hb_value_t *value)
{
    if (hb_value_type(value) != HB_VALUE_TYPE_STRING) return ((void*)0);
    return json_string_value(value);
}
