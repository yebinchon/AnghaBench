
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdouble ;
typedef int GtkWidget ;
typedef int GhbValue ;


 int ghb_value_free (int **) ;
 int ghb_value_get_double (int *) ;
 int * ghb_widget_value (int *) ;

gdouble
ghb_widget_double(GtkWidget *widget)
{
    GhbValue *value;
    gdouble dval;

    value = ghb_widget_value(widget);
    dval = ghb_value_get_double(value);
    ghb_value_free(&value);
    return dval;
}
