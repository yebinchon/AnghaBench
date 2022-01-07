
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int builder; int queue; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int GtkListBoxRow ;
typedef int GtkListBox ;
typedef int GhbValue ;


 int GHB_QUEUE_RUNNING ;
 int GHB_WIDGET (int ,char*) ;
 int GTK_CONTAINER (int *) ;
 int * GTK_LIST_BOX (int ) ;
 int GTK_WIDGET (int *) ;
 int * ghb_array_get (int ,int) ;
 int ghb_array_len (int ) ;
 int ghb_array_remove (int ,int) ;
 int ghb_cancel_encode2 (TYPE_1__*,int *) ;
 int * ghb_dict_get (int *,char*) ;
 int ghb_dict_get_int (int *,char*) ;
 int ghb_remove_job (int) ;
 int gtk_container_remove (int ,int ) ;
 int * gtk_list_box_get_row_at_index (int *,int) ;

__attribute__((used)) static void
ghb_queue_remove_row_internal(signal_user_data_t *ud, int index)
{
    GtkListBox * lb;
    GtkListBoxRow * row;
    GhbValue * queueDict, * uiDict;

    if (index < 0 || index >= ghb_array_len(ud->queue))
    {
        return;
    }

    queueDict = ghb_array_get(ud->queue, index);
    uiDict = ghb_dict_get(queueDict, "uiSettings");
    int status = ghb_dict_get_int(uiDict, "job_status");
    if (status == GHB_QUEUE_RUNNING)
    {

        if (!ghb_cancel_encode2(ud, ((void*)0)))
        {
            return;
        }
        int unique_id = ghb_dict_get_int(uiDict, "job_unique_id");
        ghb_remove_job(unique_id);
    }
    ghb_array_remove(ud->queue, index);


    lb = GTK_LIST_BOX(GHB_WIDGET(ud->builder, "queue_list"));
    row = gtk_list_box_get_row_at_index(lb, index);
    gtk_container_remove(GTK_CONTAINER(lb), GTK_WIDGET(row));
}
