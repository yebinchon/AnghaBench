
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GtkWidget ;
typedef int GhbValue ;


 int ghb_value_free (int **) ;
 int * ghb_value_get_string_xform (int *) ;
 int * ghb_widget_value (int *) ;

gchar*
ghb_widget_string(GtkWidget *widget)
{
    GhbValue *value;
    gchar *sval;

    value = ghb_widget_value(widget);
    sval = ghb_value_get_string_xform(value);
    ghb_value_free(&value);
    return sval;
}
