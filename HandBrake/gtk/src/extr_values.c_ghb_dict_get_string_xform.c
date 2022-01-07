
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GhbValue ;


 int * g_strdup (char*) ;
 int * ghb_dict_get_value (int const*,int const*) ;
 int * ghb_value_get_string_xform (int const*) ;

gchar*
ghb_dict_get_string_xform(const GhbValue *dict, const gchar *key)
{
    const GhbValue* value;
    value = ghb_dict_get_value(dict, key);
    if (value == ((void*)0)) return g_strdup("");
    return ghb_value_get_string_xform(value);
}
