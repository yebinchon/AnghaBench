
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int const hb_value_t ;
struct TYPE_3__ {int num; int den; } ;
typedef TYPE_1__ hb_rational_t ;
typedef int hb_dict_t ;


 scalar_t__ HB_VALUE_TYPE_DICT ;
 scalar_t__ HB_VALUE_TYPE_STRING ;
 int * hb_dict_get (int const*,char const*) ;
 int hb_str_vfree (char**) ;
 char** hb_str_vsplit (char const*,char) ;
 void* hb_value_get_int (int const*) ;
 char* hb_value_get_string (int const*) ;
 scalar_t__ hb_value_type (int const*) ;
 scalar_t__ isdigit (char) ;
 int strtol (char*,char**,int ) ;

int hb_dict_extract_rational(hb_rational_t *dst, const hb_dict_t * dict,
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

    if (hb_value_type(val) == HB_VALUE_TYPE_DICT)
    {
        hb_value_t * num_val = hb_dict_get(val, "Num");
        if (num_val == ((void*)0))
        {
            return 0;
        }
        hb_value_t * den_val = hb_dict_get(val, "Den");
        if (den_val == ((void*)0))
        {
            return 0;
        }

        dst->num = hb_value_get_int(num_val);
        dst->den = hb_value_get_int(den_val);
        return 1;
    }
    else if (hb_value_type(val) == HB_VALUE_TYPE_STRING)
    {
        const char * str = hb_value_get_string(val);
        char ** rational = hb_str_vsplit(str, '/');
        if (rational[0] != ((void*)0) && rational[1] != ((void*)0) &&
            isdigit(rational[0][0]) && isdigit(rational[1][0]))
        {
            char *num_end, *den_end;


            int num = strtol(rational[0], &num_end, 0);
            int den = strtol(rational[1], &den_end, 0);

            if (num_end[0] == 0 && den_end[0] == 0)
            {
                dst->num = num;
                dst->den = den;
                hb_str_vfree(rational);
                return 1;
            }
        }
        hb_str_vfree(rational);
    }

    return 0;
}
