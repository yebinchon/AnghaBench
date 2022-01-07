
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdouble ;
typedef int gchar ;
typedef int GhbValue ;


 int * ghb_dict_get_value (int const*,int const*) ;
 int ghb_value_get_double (int const*) ;

gdouble
ghb_dict_get_double(const GhbValue *dict, const gchar *key)
{
    const GhbValue* value;
    value = ghb_dict_get_value(dict, key);
    if (value == ((void*)0)) return 0;
    return ghb_value_get_double(value);
}
