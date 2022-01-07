
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdouble ;
typedef int gchar ;
typedef int GhbValue ;


 int ghb_dict_set (int *,int const*,int *) ;
 int * ghb_double_value_new (int ) ;

void
ghb_dict_set_double(GhbValue *dict, const gchar *key, gdouble dval)
{
    GhbValue *value;
    value = ghb_double_value_new(dval);
    ghb_dict_set(dict, key, value);
}
