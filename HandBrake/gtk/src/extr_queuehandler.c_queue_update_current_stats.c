
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int queue; int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef scalar_t__ gint ;
typedef int GtkListBoxRow ;
typedef int GtkListBox ;
typedef int GhbValue ;


 int GHB_WIDGET (int ,char*) ;
 int * GTK_LIST_BOX (int ) ;
 int * ghb_array_get (int ,scalar_t__) ;
 scalar_t__ ghb_array_len (int ) ;
 int * gtk_list_box_get_selected_row (int *) ;
 scalar_t__ gtk_list_box_row_get_index (int *) ;
 int queue_update_stats (int *,TYPE_1__*) ;

void queue_update_current_stats(signal_user_data_t * ud)
{
    GtkListBox * lb;
    GtkListBoxRow * row;
    gint index;
    GhbValue * queueDict;

    lb = GTK_LIST_BOX(GHB_WIDGET(ud->builder, "queue_list"));
    row = gtk_list_box_get_selected_row(lb);
    if (row != ((void*)0))
    {

        index = gtk_list_box_row_get_index(row);
        if (index < 0 || index >= ghb_array_len(ud->queue))
        {
            return;
        }
        queueDict = ghb_array_get(ud->queue, index);
        queue_update_stats(queueDict, ud);
    }
}
