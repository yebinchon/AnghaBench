
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ guint ;
typedef int gsize ;
typedef int gchar ;
struct TYPE_3__ {int message; } ;
typedef int GtkWidget ;
typedef int GtkBuilder ;
typedef int GResource ;
typedef TYPE_1__ GError ;
typedef int GBytes ;


 int EXIT_FAILURE ;
 int GTK_BUTTONS_CLOSE ;
 int GTK_DIALOG (int *) ;
 int GTK_DIALOG_MODAL ;
 int GTK_MESSAGE_ERROR ;
 int * N_ (char*) ;
 int exit (int ) ;
 int * g_bytes_get_data (int *,int *) ;
 int g_debug (char*) ;
 int * g_resource_lookup_data (int *,char*,int ,int *) ;
 int gettext (int const*) ;
 int * ghb_ui_get_resource () ;
 scalar_t__ gtk_builder_add_from_string (int *,int const*,int,TYPE_1__**) ;
 int * gtk_builder_new () ;
 int gtk_dialog_run (int ) ;
 int * gtk_message_dialog_new_with_markup (int *,int ,int ,int ,int ,int const*,int ) ;
 int gtk_widget_destroy (int *) ;

GtkBuilder*
create_builder_or_die(const gchar * name)
{
    guint res = 0;
    GError *error = ((void*)0);
    const gchar *ghb_ui;
    gsize data_size;

    GResource *ui_res = ghb_ui_get_resource();
    GBytes *gbytes = g_resource_lookup_data(ui_res,
                                            "/fr/handbrake/ghb/ui/ghb.ui",
                                            0, ((void*)0));
    ghb_ui = g_bytes_get_data(gbytes, &data_size);

    const gchar *markup =
        N_("<b><big>Unable to create %s.</big></b>\n"
        "\n"
        "Internal error. Could not parse UI description.\n"
        "%s");
    g_debug("create_builder_or_die()\n");
    GtkBuilder *xml = gtk_builder_new();
    if (xml != ((void*)0))
        res = gtk_builder_add_from_string(xml, ghb_ui, -1, &error);
    if (!xml || !res)
    {
        GtkWidget *dialog = gtk_message_dialog_new_with_markup(((void*)0),
            GTK_DIALOG_MODAL,
            GTK_MESSAGE_ERROR,
            GTK_BUTTONS_CLOSE,
            gettext(markup),
            name, error->message);
        gtk_dialog_run(GTK_DIALOG(dialog));
        gtk_widget_destroy(dialog);
        exit(EXIT_FAILURE);
    }
    return xml;
}
