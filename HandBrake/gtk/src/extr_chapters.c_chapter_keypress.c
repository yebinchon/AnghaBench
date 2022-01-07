
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int signal_user_data_t ;
typedef scalar_t__ guint ;
typedef int gboolean ;
typedef int GtkWidget ;
typedef int GtkListBoxRow ;
typedef int GtkListBox ;


 int FALSE ;
 scalar_t__ GDK_KEY_Down ;
 scalar_t__ GDK_KEY_Return ;
 scalar_t__ GDK_KEY_Up ;
 int * GTK_LIST_BOX (int ) ;
 int GTK_WIDGET (int *) ;
 int TRUE ;
 int * find_widget (int ,char*) ;
 int * gtk_list_box_get_row_at_index (int *,int) ;
 int gtk_list_box_row_get_index (int *) ;
 int gtk_widget_get_parent (int ) ;
 int gtk_widget_grab_focus (int *) ;
 int * list_box_get_row (int *) ;

__attribute__((used)) static gboolean
chapter_keypress(
    GtkWidget * widget,
    guint keyval,
    signal_user_data_t * ud)
{
    GtkWidget * entry;
    GtkListBoxRow * row;
    GtkListBox * lb;
    int index;

    if (keyval != GDK_KEY_Return &&
        keyval != GDK_KEY_Down &&
        keyval != GDK_KEY_Up)
    {
        return FALSE;
    }

    row = list_box_get_row(widget);
    lb = GTK_LIST_BOX(gtk_widget_get_parent(GTK_WIDGET(row)));
    index = gtk_list_box_row_get_index(row);
    if (keyval == GDK_KEY_Return || keyval == GDK_KEY_Down)
    {
        index++;
    }
    else if (keyval == GDK_KEY_Up && index > 0)
    {
        index--;
    }
    if (index >= 0)
    {
        row = gtk_list_box_get_row_at_index(lb, index);
        if (row != ((void*)0))
        {
            entry = find_widget(GTK_WIDGET(row), "chapter_entry");
            if (entry != ((void*)0))
            {
                gtk_widget_grab_focus(entry);
                return TRUE;
            }
        }
    }
    return FALSE;
}
