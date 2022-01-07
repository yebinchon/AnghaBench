
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gint ;
typedef int GtkWidget ;
typedef int GhbValue ;


 int ghb_value_free (int **) ;
 scalar_t__ ghb_value_get_int (int *) ;
 int * ghb_widget_value (int *) ;

gint
ghb_widget_int(GtkWidget *widget)
{
    GhbValue *value;
    gint ival;

    value = ghb_widget_value(widget);
    ival = (gint)ghb_value_get_int(value);
    ghb_value_free(&value);
    return ival;
}
