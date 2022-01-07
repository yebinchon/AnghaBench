
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
 int GTK_CONTAINER (int *) ;
 int * GTK_LIST_BOX (int ) ;
 int GTK_WIDGET (int *) ;
 int gtk_container_remove (int ,int ) ;
 int * gtk_list_box_get_row_at_index (int *,int ) ;

__attribute__((used)) static void
ghb_clear_chapter_list_ui(signal_user_data_t * ud)
{
    GtkListBox * lb;
    GtkListBoxRow * row;

    lb = GTK_LIST_BOX(GHB_WIDGET(ud->builder, "chapters_list"));
    while ((row = gtk_list_box_get_row_at_index(lb, 0)) != ((void*)0))
    {
        gtk_container_remove(GTK_CONTAINER(lb), GTK_WIDGET(row));
    }
}
