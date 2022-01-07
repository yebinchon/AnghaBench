
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gchar ;
typedef scalar_t__ gboolean ;
typedef int GhbValue ;
typedef int GhbDictIter ;
typedef int GObject ;


 int GTK_WIDGET (int *) ;
 scalar_t__ dep_check (TYPE_1__*,int const*,scalar_t__*) ;
 int g_debug (char*) ;
 int g_message (char*,int const*) ;
 int ghb_dict_iter_init (int *) ;
 scalar_t__ ghb_dict_iter_next (int *,int *,int const**,int **) ;
 int * gtk_builder_get_object (int ,int const*) ;
 int gtk_widget_hide (int ) ;
 int gtk_widget_set_can_focus (int ,scalar_t__) ;
 int gtk_widget_set_sensitive (int ,scalar_t__) ;
 int gtk_widget_show (int ) ;
 int * rev_map ;

void
ghb_check_all_depencencies(signal_user_data_t *ud)
{
    GhbDictIter iter;
    const gchar *dep_name;
    GhbValue *value;
    GObject *dep_object;

    g_debug("ghb_check_all_depencencies ()");
    if (rev_map == ((void*)0)) return;
    iter = ghb_dict_iter_init(rev_map);
    while (ghb_dict_iter_next(rev_map, &iter, &dep_name, &value))
    {
        gboolean sensitive;
        gboolean hide;

        dep_object = gtk_builder_get_object (ud->builder, dep_name);
        if (dep_object == ((void*)0))
        {
            g_message("Failed to find dependent widget %s", dep_name);
            continue;
        }
        sensitive = dep_check(ud, dep_name, &hide);
        gtk_widget_set_sensitive(GTK_WIDGET(dep_object), sensitive);
        gtk_widget_set_can_focus(GTK_WIDGET(dep_object), sensitive);
        if (!sensitive && hide)
        {
            gtk_widget_hide(GTK_WIDGET(dep_object));
        }
        else
        {
            gtk_widget_show(GTK_WIDGET(dep_object));
        }
    }
}
