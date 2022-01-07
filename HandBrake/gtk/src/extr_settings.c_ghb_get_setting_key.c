
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GtkWidget ;


 int GTK_BUILDABLE (int *) ;
 int g_debug (char*) ;
 int * gtk_buildable_get_name (int ) ;
 int * gtk_widget_get_name (int *) ;
 int strncmp (int const*,char*,int) ;

const gchar*
ghb_get_setting_key(GtkWidget *widget)
{
    const gchar *name;

    g_debug("get_setting_key ()\n");
    if (widget == ((void*)0)) return ((void*)0);
    name = gtk_buildable_get_name(GTK_BUILDABLE(widget));

    if (name == ((void*)0) || !strncmp(name, "Gtk", 3))
    {
        name = gtk_widget_get_name(widget);
    }
    if (name == ((void*)0))
    {

        g_debug("Bad widget\n");
        return ((void*)0);
    }
    return name;
}
