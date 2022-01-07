
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;
typedef int gboolean ;
typedef int GtkWidget ;
typedef int GhbValue ;


 int ghb_value_free (int **) ;
 int ghb_value_get_bool (int *) ;
 int * ghb_widget_value (int *) ;

gint
ghb_widget_boolean(GtkWidget *widget)
{
    GhbValue *value;
    gboolean bval;

    value = ghb_widget_value(widget);
    bval = ghb_value_get_bool(value);
    ghb_value_free(&value);
    return bval;
}
