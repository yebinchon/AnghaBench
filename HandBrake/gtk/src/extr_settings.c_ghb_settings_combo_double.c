
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdouble ;
typedef int gchar ;
typedef int GhbValue ;


 int ghb_dict_get_value (int const*,int const*) ;
 int ghb_lookup_combo_double (int const*,int ) ;

gdouble
ghb_settings_combo_double(const GhbValue *settings, const gchar *key)
{
    return ghb_lookup_combo_double(key, ghb_dict_get_value(settings, key));
}
