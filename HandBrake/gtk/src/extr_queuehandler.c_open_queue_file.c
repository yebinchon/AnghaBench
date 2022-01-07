
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * queue; int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int GtkWindow ;
typedef int GtkWidget ;
typedef int GtkFileFilter ;
typedef int GtkFileChooser ;
typedef int GhbValue ;


 int GHB_OBJECT (int ,char*) ;
 int GHB_QUEUE_PENDING ;
 int GHB_STOCK_CANCEL ;
 int GHB_STOCK_OPEN ;
 int GHB_WIDGET (int ,char*) ;
 int GTK_DIALOG (int *) ;
 int * GTK_FILE_CHOOSER (int *) ;
 int GTK_FILE_CHOOSER_ACTION_OPEN ;
 int * GTK_FILE_FILTER (int ) ;
 scalar_t__ GTK_RESPONSE_ACCEPT ;
 int GTK_RESPONSE_CANCEL ;
 int * GTK_WINDOW (int ) ;
 char* _ (char*) ;
 int add_to_queue_list (TYPE_1__*,int *) ;
 int g_free (char*) ;
 int ghb_array_append (int *,int *) ;
 int * ghb_array_get (int *,int) ;
 int ghb_array_len (int *) ;
 int * ghb_array_new () ;
 int * ghb_dict_get (int *,char*) ;
 int ghb_dict_set_int (int *,char*,int ) ;
 int ghb_queue_buttons_grey (TYPE_1__*) ;
 int * ghb_read_settings_file (char*) ;
 int ghb_save_queue (int *) ;
 int ghb_value_free (int **) ;
 int ghb_value_incref (int *) ;
 scalar_t__ gtk_dialog_run (int ) ;
 int gtk_file_chooser_add_filter (int *,int *) ;
 int * gtk_file_chooser_dialog_new (char*,int *,int ,int ,int ,int ,scalar_t__,int *) ;
 char* gtk_file_chooser_get_filename (int *) ;
 int gtk_file_filter_add_pattern (int *,char*) ;
 int gtk_file_filter_set_name (int *,char*) ;
 int gtk_widget_destroy (int *) ;

__attribute__((used)) static void
open_queue_file(signal_user_data_t *ud)
{
    GtkWidget *dialog;
    GtkWindow *hb_window;

    hb_window = GTK_WINDOW(GHB_WIDGET(ud->builder, "hb_window"));
    dialog = gtk_file_chooser_dialog_new("Queue Destination",
                      hb_window,
                      GTK_FILE_CHOOSER_ACTION_OPEN,
                      GHB_STOCK_CANCEL, GTK_RESPONSE_CANCEL,
                      GHB_STOCK_OPEN, GTK_RESPONSE_ACCEPT,
                      ((void*)0));


    GtkFileFilter *filter;
    GtkFileChooser *chooser = GTK_FILE_CHOOSER(dialog);
    filter = GTK_FILE_FILTER(GHB_OBJECT(ud->builder, "QueueFilterAll"));
    gtk_file_filter_set_name(filter, _("All"));
    gtk_file_filter_add_pattern(filter, "*");
    gtk_file_chooser_add_filter(chooser, filter);
    filter = GTK_FILE_FILTER(GHB_OBJECT(ud->builder, "QueueFilterJSON"));
    gtk_file_filter_set_name(filter, "JSON");
    gtk_file_filter_add_pattern(filter, "*.JSON");
    gtk_file_filter_add_pattern(filter, "*.json");
    gtk_file_chooser_add_filter(chooser, filter);

    if (gtk_dialog_run(GTK_DIALOG (dialog)) != GTK_RESPONSE_ACCEPT)
    {
        gtk_widget_destroy(dialog);
        return;
    }

    GhbValue *queue;
    char *filename = gtk_file_chooser_get_filename(GTK_FILE_CHOOSER(dialog));
    gtk_widget_destroy(dialog);

    queue = ghb_read_settings_file(filename);
    if (queue != ((void*)0))
    {
        int ii, count;
        count = ghb_array_len(queue);
        for (ii = 0; ii < count; ii++)
        {
            GhbValue *queueDict, *uiDict;

            queueDict = ghb_array_get(queue, ii);
            uiDict = ghb_dict_get(queueDict, "uiSettings");
            ghb_value_incref(queueDict);
            ghb_dict_set_int(uiDict, "job_status", GHB_QUEUE_PENDING);
            ghb_dict_set_int(uiDict, "job_unique_id", 0);

            if (ud->queue == ((void*)0))
                ud->queue = ghb_array_new();
            ghb_array_append(ud->queue, queueDict);
            add_to_queue_list(ud, queueDict);
        }
        ghb_queue_buttons_grey(ud);
        ghb_save_queue(ud->queue);
        ghb_value_free(&queue);
    }
    g_free (filename);
}
