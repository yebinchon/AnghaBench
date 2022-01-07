
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int hb_value_array_t ;


 int json_array_insert_new (int *,int,int *) ;

void
hb_value_array_insert(hb_value_array_t *array, int index, hb_value_t *value)
{
    json_array_insert_new(array, index, value);
}
