
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkListBoxRow ;
typedef int GtkListBox ;


 int * gtk_list_box_get_row_at_index (int *,int) ;
 int gtk_list_box_row_get_index (int *) ;

__attribute__((used)) static GtkListBoxRow *
get_row_after (GtkListBox * list, GtkListBoxRow * row)
{
    int pos = gtk_list_box_row_get_index(row);
    return gtk_list_box_get_row_at_index(list, pos + 1);
}
