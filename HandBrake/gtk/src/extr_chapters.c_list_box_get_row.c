
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkWidget ;
typedef int GtkListBoxRow ;


 int * GTK_LIST_BOX_ROW (int *) ;
 scalar_t__ GTK_TYPE_LIST_BOX_ROW ;
 scalar_t__ G_OBJECT_TYPE (int *) ;
 int * gtk_widget_get_parent (int *) ;

__attribute__((used)) static GtkListBoxRow *
list_box_get_row(GtkWidget *widget)
{
    while (widget != ((void*)0) && G_OBJECT_TYPE(widget) != GTK_TYPE_LIST_BOX_ROW)
    {
        widget = gtk_widget_get_parent(widget);
    }
    return GTK_LIST_BOX_ROW(widget);
}
