
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GtkWidget ;
typedef int GhbValue ;


 int g_debug (char*,...) ;
 int ghb_dict_set (int *,int const*,int *) ;
 int * ghb_get_setting_key (int *) ;
 int * ghb_widget_value (int *) ;

void
ghb_widget_to_setting(GhbValue *settings, GtkWidget *widget)
{
    const gchar *key = ((void*)0);
    GhbValue *value;

    if (widget == ((void*)0)) return;
    g_debug("ghb_widget_to_setting");

    key = ghb_get_setting_key(widget);
    if (key == ((void*)0)) return;
    value = ghb_widget_value(widget);
    if (value != ((void*)0))
    {
        ghb_dict_set(settings, key, value);
    }
    else
    {
        g_debug("No value found for %s\n", key);
    }
}
