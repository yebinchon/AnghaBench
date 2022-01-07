
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GhbValue ;


 int * ghb_value_get_string (int const*) ;
 int lang_lookup_index (int const*) ;

int
ghb_lookup_lang(const GhbValue *glang)
{
    const gchar *str;

    str = ghb_value_get_string(glang);
    return lang_lookup_index(str);
}
