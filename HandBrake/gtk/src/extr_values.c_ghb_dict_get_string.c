
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GhbValue ;


 int * ghb_dict_get_value (int const*,int const*) ;
 int const* ghb_value_get_string (int const*) ;

const gchar*
ghb_dict_get_string(const GhbValue *dict, const gchar *key)
{
    const GhbValue* value;
    value = ghb_dict_get_value(dict, key);
    return ghb_value_get_string(value);
}
