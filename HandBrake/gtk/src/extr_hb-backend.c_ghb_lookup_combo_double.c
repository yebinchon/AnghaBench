
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double gdouble ;
typedef int gchar ;
typedef int GhbValue ;


 int GHB_DOUBLE ;
 int ghb_value_free (int **) ;
 double ghb_value_get_double (int *) ;
 int * lookup_combo_value (int const*,int const*,int ) ;

gdouble
ghb_lookup_combo_double(const gchar *name, const GhbValue *gval)
{
    if (gval == ((void*)0))
        return 0;
    GhbValue *gresult = lookup_combo_value(name, gval, GHB_DOUBLE);
    double result = ghb_value_get_double(gresult);
    ghb_value_free(&gresult);
    return result;
}
