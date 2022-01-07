
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GhbValue ;


 int * json_string (int const*) ;
 int json_string_set (int *,int const*) ;

GhbValue*
ghb_string_value(const gchar *str)
{
    static GhbValue *gval = ((void*)0);
    if (gval == ((void*)0))
        gval = json_string(str);
    else
        json_string_set(gval, str);
    return gval;
}
