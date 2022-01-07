
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int hb_value_array_t ;


 scalar_t__ HB_VALUE_TYPE_ARRAY ;
 int * hb_value_array_get (int *,int) ;
 int hb_value_array_len (int *) ;
 int hb_value_dup (int *) ;
 scalar_t__ hb_value_type (int *) ;
 int json_array_append_new (int *,int ) ;

void
hb_value_array_concat(hb_value_array_t *array, hb_value_t *value)
{
    if (hb_value_type(value) == HB_VALUE_TYPE_ARRAY)
    {
        int ii;
        int len = hb_value_array_len(value);

        for (ii = 0; ii < len; ii++)
        {
            hb_value_t * val = hb_value_array_get(value, ii);
            json_array_append_new(array, hb_value_dup(val));
        }
    }
    else
    {
        json_array_append_new(array, hb_value_dup(value));
    }
}
