
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint64 ;
typedef int gchar ;
typedef int GhbValue ;


 int * ghb_dict_get_value (int const*,int const*) ;
 int ghb_value_get_int (int const*) ;

gint64
ghb_dict_get_int(const GhbValue *dict, const gchar *key)
{
    const GhbValue* value;
    value = ghb_dict_get_value(dict, key);
    if (value == ((void*)0)) return 0;
    return ghb_value_get_int(value);
}
