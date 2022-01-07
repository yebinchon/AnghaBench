
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int hb_dict_t ;


 int * hb_dict_get (int const*,char const*) ;
 double hb_value_get_double (int *) ;

int hb_dict_extract_double(double *dst, const hb_dict_t * dict,
                                        const char * key)
{
    if (dict == ((void*)0) || key == ((void*)0) || dst == ((void*)0))
    {
        return 0;
    }

    hb_value_t *val = hb_dict_get(dict, key);
    if (val == ((void*)0))
    {
        return 0;
    }

    *dst = hb_value_get_double(val);
    return 1;
}
