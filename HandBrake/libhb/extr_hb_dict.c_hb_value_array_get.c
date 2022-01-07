
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int hb_value_array_t ;


 int * json_array_get (int const*,int) ;

hb_value_t*
hb_value_array_get(const hb_value_array_t *array, int index)
{
    return json_array_get(array, index);
}
