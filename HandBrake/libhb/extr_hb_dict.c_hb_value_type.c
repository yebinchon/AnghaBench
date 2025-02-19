
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ hb_value_type_t ;
typedef int hb_value_t ;


 scalar_t__ HB_VALUE_TYPE_BOOL ;
 scalar_t__ HB_VALUE_TYPE_NULL ;
 scalar_t__ JSON_FALSE ;
 scalar_t__ JSON_TRUE ;
 scalar_t__ json_typeof (int const*) ;

hb_value_type_t hb_value_type(const hb_value_t *value)
{
   if (value == ((void*)0))
        return HB_VALUE_TYPE_NULL;
    hb_value_type_t type = json_typeof(value);
    if (type == JSON_TRUE || type == JSON_FALSE)
        return HB_VALUE_TYPE_BOOL;
    return type;
}
