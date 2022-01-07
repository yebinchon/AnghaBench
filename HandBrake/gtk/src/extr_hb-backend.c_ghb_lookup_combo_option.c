
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GhbValue ;


 int GHB_STRING ;
 char* g_strdup (char const*) ;
 int ghb_value_free (int **) ;
 char* ghb_value_get_string (int *) ;
 int * lookup_combo_value (int const*,int const*,int ) ;

char*
ghb_lookup_combo_option(const gchar *name, const GhbValue *gval)
{
    if (gval == ((void*)0))
        return ((void*)0);
    GhbValue *gresult = lookup_combo_value(name, gval, GHB_STRING);
    const char *tmp = ghb_value_get_string(gresult);
    char *result = ((void*)0);
    if (tmp != ((void*)0))
    {
        result = g_strdup(tmp);
    }
    ghb_value_free(&gresult);
    return result;
}
