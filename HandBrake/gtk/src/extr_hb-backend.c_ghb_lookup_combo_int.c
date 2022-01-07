
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;
typedef int gchar ;
typedef int GhbValue ;


 int GHB_INT ;
 int ghb_value_free (int **) ;
 int ghb_value_get_int (int *) ;
 int * lookup_combo_value (int const*,int const*,int ) ;

gint
ghb_lookup_combo_int(const gchar *name, const GhbValue *gval)
{
    if (gval == ((void*)0))
        return 0;
    GhbValue *gresult = lookup_combo_value(name, gval, GHB_INT);
    int result = ghb_value_get_int(gresult);
    ghb_value_free(&gresult);
    return result;
}
