
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int gboolean ;
typedef int GhbValue ;


 int * ghb_bool_value_new (int ) ;
 int ghb_dict_set (int *,int const*,int *) ;

void
ghb_dict_set_bool(GhbValue *dict, const gchar *key, gboolean bval)
{
    GhbValue *value;
    value = ghb_bool_value_new(bval);
    ghb_dict_set(dict, key, value);
}
