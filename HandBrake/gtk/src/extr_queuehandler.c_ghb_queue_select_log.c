
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * extra_activity_buffer; int * extra_activity_path; int * queue_activity_buffer; int builder; int queue; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef scalar_t__ gint ;
typedef int GtkTextView ;
typedef int GtkTextBuffer ;
typedef int GtkListBoxRow ;
typedef int GtkListBox ;
typedef int GhbValue ;


 int GHB_QUEUE_PENDING ;
 int GHB_QUEUE_RUNNING ;
 int GHB_WIDGET (int ,char*) ;
 int * GTK_LIST_BOX (int ) ;
 int * GTK_TEXT_VIEW (int ) ;
 int g_free (int *) ;
 int * ghb_array_get (int ,scalar_t__) ;
 scalar_t__ ghb_array_len (int ) ;
 int * ghb_dict_get (int *,char*) ;
 int ghb_dict_get_int (int *,char*) ;
 char* ghb_dict_get_string (int *,char*) ;
 int ghb_string_value (char const*) ;
 int ghb_ui_update (TYPE_1__*,char*,int ) ;
 int * gtk_list_box_get_selected_row (int *) ;
 scalar_t__ gtk_list_box_row_get_index (int *) ;
 int gtk_text_buffer_set_text (int *,char*,int ) ;
 int * gtk_text_view_get_buffer (int *) ;
 int gtk_text_view_set_buffer (int *,int *) ;
 int read_log (TYPE_1__*,char const*) ;

void ghb_queue_select_log(signal_user_data_t * ud)
{
    GtkListBox * lb;
    GtkListBoxRow * row;
    GtkTextBuffer * current;
    gint index;
    GhbValue * queueDict, *uiDict;

    lb = GTK_LIST_BOX(GHB_WIDGET(ud->builder, "queue_list"));
    row = gtk_list_box_get_selected_row(lb);
    if (row != ((void*)0))
    {

        GtkTextView * tv;
        int status;
        const char * log_path;

        index = gtk_list_box_row_get_index(row);
        if (index < 0 || index >= ghb_array_len(ud->queue))
        {
            return;
        }
        queueDict = ghb_array_get(ud->queue, index);
        uiDict = ghb_dict_get(queueDict, "uiSettings");

        tv = GTK_TEXT_VIEW(GHB_WIDGET(ud->builder, "queue_activity_view"));
        current = gtk_text_view_get_buffer(tv);

        status = ghb_dict_get_int(uiDict, "job_status");
        log_path = ghb_dict_get_string(uiDict, "ActivityFilename");
        if (status != GHB_QUEUE_PENDING && log_path != ((void*)0))
        {
            ghb_ui_update(ud, "queue_activity_location",
                          ghb_string_value(log_path));
        }
        else
        {
            ghb_ui_update(ud, "queue_activity_location", ghb_string_value(""));
        }
        if (status == GHB_QUEUE_RUNNING)
        {


            if (ud->queue_activity_buffer != current)
            {
                gtk_text_view_set_buffer(tv, ud->queue_activity_buffer);
            }
        }
        else
        {


            if (ud->extra_activity_buffer != current)
            {
                gtk_text_view_set_buffer(tv, ud->extra_activity_buffer);
            }
            log_path = ghb_dict_get_string(uiDict, "ActivityFilename");
            if (status != GHB_QUEUE_PENDING && log_path != ((void*)0))
            {

                read_log(ud, log_path);
            }
            else
            {


                g_free(ud->extra_activity_path);
                ud->extra_activity_path = ((void*)0);
                gtk_text_buffer_set_text(ud->extra_activity_buffer, "", 0);
            }
        }
    }
}
