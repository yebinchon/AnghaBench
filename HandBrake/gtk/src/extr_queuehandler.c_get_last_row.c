
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkListBoxRow ;
typedef int GtkListBox ;


 int * gtk_list_box_get_row_at_index (int *,int) ;

__attribute__((used)) static GtkListBoxRow *
get_last_row(GtkListBox * list)
{
    int i;
    GtkListBoxRow * row;

    row = ((void*)0);
    for (i = 0; ; i++)
    {
        GtkListBoxRow * tmp;
        tmp = gtk_list_box_get_row_at_index(list, i);
        if (tmp == ((void*)0))
            return row;
        row = tmp;
    }
    return row;
}
