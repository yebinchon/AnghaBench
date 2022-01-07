
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int builder; int queue; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gdouble ;
typedef int GtkProgressBar ;
typedef int GtkListBoxRow ;
typedef int GtkListBox ;


 int GHB_WIDGET (int ,char*) ;
 int * GTK_LIST_BOX (int ) ;
 int * GTK_PROGRESS_BAR (int ) ;
 int GTK_WIDGET (int *) ;
 int find_widget (int ,char*) ;
 int ghb_array_len (int ) ;
 int * gtk_list_box_get_row_at_index (int *,int) ;
 int gtk_progress_bar_set_fraction (int *,int ) ;

void
ghb_queue_progress_set_fraction(signal_user_data_t *ud, int index, gdouble frac)
{
    GtkListBox * lb;
    GtkListBoxRow * row;
    GtkProgressBar * progress;

    int count = ghb_array_len(ud->queue);
    if (index < 0 || index >= count)
    {

        return;
    }

    lb = GTK_LIST_BOX(GHB_WIDGET(ud->builder, "queue_list"));
    row = gtk_list_box_get_row_at_index(lb, index);
    if (row == ((void*)0))
    {
        return;
    }
    progress = GTK_PROGRESS_BAR(find_widget(GTK_WIDGET(row),
                                            "queue_item_progress"));
    gtk_progress_bar_set_fraction(progress, frac);
}
