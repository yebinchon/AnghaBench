
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int hb_value_array_t ;


 int json_array_append_new (int *,int *) ;

void
hb_value_array_append(hb_value_array_t *array, hb_value_t *value)
{
    json_array_append_new(array, value);
}
