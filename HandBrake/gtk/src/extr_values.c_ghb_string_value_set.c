
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GhbValue ;


 int json_string_set (int *,int const*) ;

void
ghb_string_value_set(GhbValue *gval, const gchar *str)
{
    json_string_set(gval, str);
}
