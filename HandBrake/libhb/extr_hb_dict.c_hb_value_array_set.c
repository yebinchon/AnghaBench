
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int hb_value_array_t ;


 int hb_error (char*,int,int) ;
 int json_array_set_new (int *,int,int *) ;
 int json_array_size (int *) ;

void
hb_value_array_set(hb_value_array_t *array, int index, hb_value_t *value)
{
    if (index < 0 || index >= json_array_size(array))
    {
        hb_error("hb_value_array_set: invalid index %d size %zu",
                 index, json_array_size(array));
        return;
    }
    json_array_set_new(array, index, value);
}
