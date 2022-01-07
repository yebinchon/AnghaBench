
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint64 ;
typedef int gchar ;
typedef int GhbValue ;


 int ghb_dict_set (int *,int const*,int *) ;
 int * ghb_int_value_new (int ) ;

void
ghb_dict_set_int(GhbValue *dict, const gchar *key, gint64 ival)
{
    GhbValue *value;
    value = ghb_int_value_new(ival);
    ghb_dict_set(dict, key, value);
}
