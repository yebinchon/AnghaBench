
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int builder; int queue; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int GtkWindow ;
typedef int GtkWidget ;
typedef int GhbValue ;


 int GHB_QUEUE_PENDING ;
 int GHB_STOCK_CANCEL ;
 int GHB_STOCK_SAVE ;
 int GHB_WIDGET (int ,char*) ;
 int GTK_DIALOG (int *) ;
 int GTK_FILE_CHOOSER (int *) ;
 int GTK_FILE_CHOOSER_ACTION_SAVE ;
 scalar_t__ GTK_RESPONSE_ACCEPT ;
 int GTK_RESPONSE_CANCEL ;
 int * GTK_WINDOW (int ) ;
 int g_free (char*) ;
 int * ghb_array_get (int ,int) ;
 int ghb_array_len (int *) ;
 int * ghb_dict_get (int *,char*) ;
 int ghb_dict_set_int (int *,char*,int ) ;
 int * ghb_value_dup (int ) ;
 int ghb_value_free (int **) ;
 int ghb_write_settings_file (char*,int *) ;
 scalar_t__ gtk_dialog_run (int ) ;
 int * gtk_file_chooser_dialog_new (char*,int *,int ,int ,int ,int ,scalar_t__,int *) ;
 char* gtk_file_chooser_get_filename (int ) ;
 int gtk_file_chooser_set_current_name (int ,char*) ;
 int gtk_widget_destroy (int *) ;

__attribute__((used)) static void
save_queue_file(signal_user_data_t *ud)
{
    int ii, count;
    GhbValue *queue = ghb_value_dup(ud->queue);

    count = ghb_array_len(queue);
    for (ii = 0; ii < count; ii++)
    {
        GhbValue *queueDict, *uiDict;

        queueDict = ghb_array_get(ud->queue, ii);
        uiDict = ghb_dict_get(queueDict, "uiSettings");
        if (uiDict == ((void*)0))
            continue;
        ghb_dict_set_int(uiDict, "job_status", GHB_QUEUE_PENDING);
    }

    GtkWidget *dialog;
    GtkWindow *hb_window;

    hb_window = GTK_WINDOW(GHB_WIDGET(ud->builder, "hb_window"));
    dialog = gtk_file_chooser_dialog_new("Queue Destination",
                      hb_window,
                      GTK_FILE_CHOOSER_ACTION_SAVE,
                      GHB_STOCK_CANCEL, GTK_RESPONSE_CANCEL,
                      GHB_STOCK_SAVE, GTK_RESPONSE_ACCEPT,
                      ((void*)0));
    gtk_file_chooser_set_current_name(GTK_FILE_CHOOSER(dialog), "queue.json");
    if (gtk_dialog_run(GTK_DIALOG (dialog)) != GTK_RESPONSE_ACCEPT)
    {
        ghb_value_free(&queue);
        gtk_widget_destroy(dialog);
        return;
    }

    char *filename = gtk_file_chooser_get_filename(GTK_FILE_CHOOSER (dialog));
    gtk_widget_destroy(dialog);

    ghb_write_settings_file(filename, queue);
    g_free (filename);
    ghb_value_free(&queue);
}
