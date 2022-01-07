
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_array_t ;


 int json_array_clear (int *) ;

void
hb_value_array_clear(hb_value_array_t *array)
{
    json_array_clear(array);
}
