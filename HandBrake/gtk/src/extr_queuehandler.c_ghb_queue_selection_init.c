
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int GtkListBoxRow ;
typedef int GtkListBox ;


 int GHB_WIDGET (int ,char*) ;
 int * GTK_LIST_BOX (int ) ;
 int * gtk_list_box_get_row_at_index (int *,int ) ;
 int * gtk_list_box_get_selected_row (int *) ;
 int gtk_list_box_select_row (int *,int *) ;

void
ghb_queue_selection_init(signal_user_data_t * ud)
{
    GtkListBox * lb;
    GtkListBoxRow * row;

    lb = GTK_LIST_BOX(GHB_WIDGET(ud->builder, "queue_list"));
    row = gtk_list_box_get_selected_row(lb);
    if (row == ((void*)0))
    {
        row = gtk_list_box_get_row_at_index(lb, 0);
        if (row != ((void*)0))
        {
            gtk_list_box_select_row(lb, row);
        }
    }
}
