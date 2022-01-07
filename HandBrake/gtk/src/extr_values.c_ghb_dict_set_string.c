
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GhbValue ;


 int ghb_dict_set (int *,int const*,int *) ;
 int * ghb_string_value_new (int const*) ;

void
ghb_dict_set_string(GhbValue *dict, const gchar *key, const gchar *sval)
{
    GhbValue *value;
    value = ghb_string_value_new(sval);
    ghb_dict_set(dict, key, value);
}
