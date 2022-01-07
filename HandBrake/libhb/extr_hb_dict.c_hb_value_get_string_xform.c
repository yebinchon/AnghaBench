
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const hb_value_t ;


 scalar_t__ HB_VALUE_TYPE_NULL ;
 int HB_VALUE_TYPE_STRING ;
 scalar_t__ hb_value_type (int const*) ;
 int const* hb_value_xform (int const*,int ) ;
 int json_decref (int const*) ;
 int json_string_value (int const*) ;
 char* strdup (int ) ;

char*
hb_value_get_string_xform(const hb_value_t *value)
{
    char *result;
    if (hb_value_type(value) == HB_VALUE_TYPE_NULL)
        return ((void*)0);
    hb_value_t *v = hb_value_xform(value, HB_VALUE_TYPE_STRING);
    if (hb_value_type(v) == HB_VALUE_TYPE_NULL)
        return ((void*)0);
    result = strdup(json_string_value(v));
    json_decref(v);
    return result;
}
