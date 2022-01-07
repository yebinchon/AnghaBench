
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_filter_param_t ;
typedef int GhbValue ;
typedef int GhbType ;






 int * ghb_int_value_new (int) ;
 int * ghb_string_value_new (char const*) ;
 int * hb_filter_param_get_presets (int) ;
 int * hb_filter_param_get_tunes (int) ;
 int lookup_param_int (int *,int const*) ;
 char* lookup_param_option (int *,int const*) ;

__attribute__((used)) static GhbValue *
filter_opt_get2(const char *name, const GhbValue *gval, GhbType type,
               int filter_id, int preset)
{
    GhbValue *result = ((void*)0);
    hb_filter_param_t * param;

    if (preset)
    {
        param = hb_filter_param_get_presets(filter_id);
    }
    else
    {
        param = hb_filter_param_get_tunes(filter_id);
    }
    switch (type)
    {
        case 130:
        case 131:
        case 129:
        {
            int val;
            val = lookup_param_int(param, gval);
            return ghb_int_value_new(val);
        } break;
        case 128:
        {
            const char *val;
            val = lookup_param_option(param, gval);
            return ghb_string_value_new(val);
        } break;
    }
    return result;
}
