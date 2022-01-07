
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int settings; int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef scalar_t__ gint ;
typedef scalar_t__ gdouble ;
typedef char gchar ;
typedef int gboolean ;
typedef int GtkWidget ;
typedef int GhbValue ;
typedef int GObject ;


 int FALSE ;
 int * GHB_WIDGET (int ,char const*) ;
 int TRUE ;
 int g_debug (char*,char const*) ;
 int g_free (char*) ;
 int g_message (char*) ;
 int g_strfreev (char**) ;
 char** g_strsplit (char const*,char*,int) ;
 scalar_t__ g_strtod (char*,int *) ;
 int * ghb_array_get (int *,int) ;
 scalar_t__ ghb_array_len (int *) ;
 int * ghb_dict_get (int *,char const*) ;
 char* ghb_dict_get_string_xform (int ,char const*) ;
 int ghb_value_get_bool (int *) ;
 char* ghb_value_get_string (int *) ;
 scalar_t__ ghb_widget_double (int *) ;
 char* ghb_widget_string (int *) ;
 int * gtk_builder_get_object (int ,char const*) ;
 int gtk_widget_is_sensitive (int *) ;
 int * rev_map ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static gboolean
dep_check(signal_user_data_t *ud, const gchar *name, gboolean *out_hide)
{
    GtkWidget *widget;
    GObject *dep_object;
    gint ii;
    gint count;
    gboolean result = TRUE;
    GhbValue *array, *data;
    const gchar *widget_name;

    g_debug("dep_check () %s", name);

    if (rev_map == ((void*)0)) return TRUE;
    array = ghb_dict_get(rev_map, name);
    count = ghb_array_len(array);
    *out_hide = FALSE;
    for (ii = 0; ii < count; ii++)
    {
        data = ghb_array_get(array, ii);
        widget_name = ghb_value_get_string(ghb_array_get(data, 0));
        widget = GHB_WIDGET(ud->builder, widget_name);
        dep_object = gtk_builder_get_object(ud->builder, name);
        if (widget != ((void*)0) && !gtk_widget_is_sensitive(widget))
        {
            continue;
        }
        if (dep_object == ((void*)0))
        {
            g_message("Failed to find widget");
        }
        else
        {
            gchar *value;
            gint jj = 0;
            gchar **values;
            gboolean sensitive = FALSE;
            gboolean die, hide;

            die = ghb_value_get_bool(ghb_array_get(data, 2));
            hide = ghb_value_get_bool(ghb_array_get(data, 3));
            const char *tmp = ghb_value_get_string(ghb_array_get(data, 1));
            values = g_strsplit(tmp, "|", 10);

            if (widget)
                value = ghb_widget_string(widget);
            else
                value = ghb_dict_get_string_xform(ud->settings, widget_name);
            while (values && values[jj])
            {
                if (values[jj][0] == '>')
                {
                    gdouble dbl = g_strtod (&values[jj][1], ((void*)0));
                    gdouble dvalue = ghb_widget_double(widget);
                    if (dvalue > dbl)
                    {
                        sensitive = TRUE;
                        break;
                    }
                }
                else if (values[jj][0] == '<')
                {
                    gdouble dbl = g_strtod (&values[jj][1], ((void*)0));
                    gdouble dvalue = ghb_widget_double(widget);
                    if (dvalue < dbl)
                    {
                        sensitive = TRUE;
                        break;
                    }
                }
                if (strcmp(values[jj], value) == 0)
                {
                    sensitive = TRUE;
                    break;
                }
                jj++;
            }
            sensitive = die ^ sensitive;
            if (!sensitive)
            {
                result = FALSE;
                *out_hide |= hide;
            }
            g_strfreev (values);
            g_free(value);
        }
    }
    return result;
}
