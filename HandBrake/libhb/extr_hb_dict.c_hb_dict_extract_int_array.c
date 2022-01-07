
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int hb_dict_t ;


 scalar_t__ HB_VALUE_TYPE_ARRAY ;
 int * hb_dict_get (int const*,char const*) ;
 int hb_value_array_get (int *,int) ;
 int hb_value_array_len (int *) ;
 int hb_value_get_int (int ) ;
 scalar_t__ hb_value_type (int *) ;

int hb_dict_extract_int_array(int *dst, int count,
                              const hb_dict_t * dict, const char * key)
{
    if (dict == ((void*)0) || key == ((void*)0) || dst == ((void*)0))
    {
        return 0;
    }

    hb_value_t *val = hb_dict_get(dict, key);
    if (hb_value_type(val) != HB_VALUE_TYPE_ARRAY)
    {
        return 0;
    }

    int len = hb_value_array_len(val);
    count = count < len ? count : len;

    int ii;
    for (ii = 0; ii < count; ii++)
    {
        dst[ii] = hb_value_get_int(hb_value_array_get(val, ii));
    }
    return 1;
}
