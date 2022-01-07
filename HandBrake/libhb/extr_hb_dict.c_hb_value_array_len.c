
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_array_t ;


 size_t json_array_size (int const*) ;

size_t
hb_value_array_len(const hb_value_array_t *array)
{
    return json_array_size(array);
}
