
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int * json_deep_copy (int const*) ;

hb_value_t * hb_value_dup(const hb_value_t *value)
{
    if (value == ((void*)0)) return ((void*)0);
    return json_deep_copy(value);
}
