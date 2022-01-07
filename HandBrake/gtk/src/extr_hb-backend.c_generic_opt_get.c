
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int combo_opts_t ;
typedef int GhbValue ;
typedef int GhbType ;






 int * ghb_double_value_new (double) ;
 int * ghb_int_value_new (int) ;
 int * ghb_string_value_new (char const*) ;
 double lookup_generic_double (int *,int const*) ;
 int lookup_generic_int (int *,int const*) ;
 char* lookup_generic_option (int *,int const*) ;

__attribute__((used)) static GhbValue *
generic_opt_get(const char *name, const void *vopts,
                const GhbValue *gval, GhbType type)
{
    combo_opts_t *opts = (combo_opts_t*)vopts;
    GhbValue *result = ((void*)0);
    switch (type)
    {
        case 129:
        case 131:
        {
            int val;
            val = lookup_generic_int(opts, gval);
            return ghb_int_value_new(val);
        } break;
        case 130:
        {
            double val;
            val = lookup_generic_double(opts, gval);
            return ghb_double_value_new(val);
        } break;
        case 128:
        {
            const char *val;
            val = lookup_generic_option(opts, gval);
            return ghb_string_value_new(val);
        } break;
    }
    return result;
}
