
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int prefs; int settings; int builder; int globals; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef scalar_t__ gint ;
typedef int gchar ;
typedef scalar_t__ gboolean ;
typedef int GtkWidget ;


 int * GHB_WIDGET (int ,char*) ;
 int GTK_DIALOG (int *) ;
 int GTK_FILE_CHOOSER (int *) ;
 scalar_t__ GTK_RESPONSE_NO ;
 int TRUE ;
 int g_debug (char*) ;
 int g_free (int *) ;
 scalar_t__ ghb_dict_get_int (int ,char*) ;
 int * ghb_dict_get_string (int ,char*) ;
 int ghb_dict_set_string (int ,char*,int *) ;
 int ghb_do_scan (TYPE_1__*,int *,scalar_t__,int ) ;
 int ghb_dvd_set_current (int *,TYPE_1__*) ;
 int ghb_pref_save (int ,char*) ;
 scalar_t__ gtk_dialog_run (int ) ;
 int * gtk_file_chooser_get_filename (int ) ;
 int gtk_file_chooser_select_filename (int ,int const*) ;
 int gtk_widget_hide (int *) ;
 int gtk_widget_show (int *) ;
 int source_dialog_extra_widgets (TYPE_1__*,int *) ;
 scalar_t__ strcmp (int const*,int *) ;

__attribute__((used)) static void
do_source_dialog(gboolean single, signal_user_data_t *ud)
{
    GtkWidget *dialog;
    const gchar *sourcename;
    gint response;

    g_debug("source_browse_clicked_cb ()");
    sourcename = ghb_dict_get_string(ud->globals, "scan_source");
    GtkWidget *widget;
    widget = GHB_WIDGET(ud->builder, "single_title_box");
    if (single)
        gtk_widget_show(widget);
    else
        gtk_widget_hide(widget);
    dialog = GHB_WIDGET(ud->builder, "source_dialog");
    source_dialog_extra_widgets(ud, dialog);

    gtk_widget_show(dialog);
    gtk_file_chooser_select_filename(GTK_FILE_CHOOSER(dialog), sourcename);

    response = gtk_dialog_run(GTK_DIALOG (dialog));
    gtk_widget_hide(dialog);
    if (response == GTK_RESPONSE_NO)
    {
        gchar *filename;

        filename = gtk_file_chooser_get_filename (GTK_FILE_CHOOSER (dialog));
        if (filename != ((void*)0))
        {
            gint title_id;

            if (single)
                title_id = ghb_dict_get_int(ud->settings, "single_title");
            else
                title_id = 0;



            if (strcmp(sourcename, filename) != 0)
            {
                ghb_dict_set_string(ud->prefs, "default_source", filename);
                ghb_pref_save(ud->prefs, "default_source");
                ghb_dvd_set_current(filename, ud);
            }
            ghb_do_scan(ud, filename, title_id, TRUE);
            g_free(filename);
        }
    }
}
