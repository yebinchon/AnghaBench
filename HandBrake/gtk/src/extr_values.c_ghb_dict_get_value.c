
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GhbValue ;


 int g_debug (char*,int const*) ;
 int * ghb_dict_get (int const*,int const*) ;

GhbValue*
ghb_dict_get_value(const GhbValue *dict, const gchar *key)
{
    GhbValue *value;
    value = ghb_dict_get(dict, key);
    if (value == ((void*)0))
        g_debug("returning null (%s)", key);
    return value;
}
