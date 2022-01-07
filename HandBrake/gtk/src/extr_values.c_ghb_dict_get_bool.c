
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int gboolean ;
typedef int GhbValue ;


 int FALSE ;
 int * ghb_dict_get_value (int const*,int const*) ;
 int ghb_value_get_bool (int const*) ;

gboolean
ghb_dict_get_bool(const GhbValue *dict, const gchar *key)
{
    const GhbValue* value;
    value = ghb_dict_get_value(dict, key);
    if (value == ((void*)0)) return FALSE;
    return ghb_value_get_bool(value);
}
