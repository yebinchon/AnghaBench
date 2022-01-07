
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int queue; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef scalar_t__ guint ;
typedef int gint ;
typedef int gboolean ;
typedef int GtkListBoxRow ;


 int FALSE ;
 scalar_t__ GDK_KEY_Delete ;
 int TRUE ;
 int ghb_queue_remove_row_internal (TYPE_1__*,int ) ;
 int ghb_save_queue (int ) ;
 int gtk_list_box_row_get_index (int *) ;

__attribute__((used)) static gboolean
queue_row_key(GtkListBoxRow * row, guint keyval, signal_user_data_t * ud)
{
    gint index;

    if (keyval != GDK_KEY_Delete)
        return FALSE;

    if (row != ((void*)0))
    {
        index = gtk_list_box_row_get_index(row);
        ghb_queue_remove_row_internal(ud, index);
        ghb_save_queue(ud->queue);
        return TRUE;
    }
    return FALSE;
}
