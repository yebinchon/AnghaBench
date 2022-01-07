
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint64 ;
typedef int GtkWidget ;
typedef int GhbValue ;


 int ghb_value_free (int **) ;
 int ghb_value_get_int (int *) ;
 int * ghb_widget_value (int *) ;

gint64
ghb_widget_int64(GtkWidget *widget)
{
    GhbValue *value;
    gint64 ival;

    value = ghb_widget_value(widget);
    ival = ghb_value_get_int(value);
    ghb_value_free(&value);
    return ival;
}
