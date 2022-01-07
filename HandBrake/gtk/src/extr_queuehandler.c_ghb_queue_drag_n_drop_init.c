
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int GtkWidget ;


 int GDK_ACTION_MOVE ;
 int * GHB_WIDGET (int ,char*) ;
 int GTK_DEST_DEFAULT_DROP ;
 int GTK_DEST_DEFAULT_MOTION ;
 int gtk_drag_dest_set (int *,int,int ,int,int ) ;
 int queue_drag_entries ;

void
ghb_queue_drag_n_drop_init(signal_user_data_t * ud)
{
    GtkWidget * widget;

    widget = GHB_WIDGET(ud->builder, "queue_list");
    gtk_drag_dest_set(widget, GTK_DEST_DEFAULT_MOTION|GTK_DEST_DEFAULT_DROP,
                      queue_drag_entries, 1, GDK_ACTION_MOVE);
}
