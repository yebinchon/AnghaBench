
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int settings; int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gchar ;
typedef int GtkWidget ;
typedef int GhbValue ;
typedef int GObject ;


 int * GHB_OBJECT (int ,int const*) ;
 int g_debug (char*,int const*) ;
 int * ghb_dict_get_value (int const*,int const*) ;
 int ghb_update_widget (int *,int *) ;
 int ghb_widget_to_setting (int ,int *) ;

int
ghb_ui_update_from_settings(signal_user_data_t *ud, const gchar *name, const GhbValue *settings)
{
    GObject *object;
    GhbValue * value;

    g_debug("ghb_ui_update_from_settings() %s", name);
    if (name == ((void*)0))
        return 0;
    value = ghb_dict_get_value(settings, name);
    if (value == ((void*)0))
        return 0;
    object = GHB_OBJECT(ud->builder, name);
    if (object == ((void*)0))
    {
        g_debug("Failed to find widget for key: %s\n", name);
        return -1;
    }
    ghb_update_widget((GtkWidget*)object, value);


    ghb_widget_to_setting(ud->settings, (GtkWidget*)object);
    return 0;
}
