
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkTreeView ;
typedef int GtkTreeSelection ;
typedef int GtkBuilder ;


 int GHB_WIDGET (int *,char*) ;
 int * GTK_TREE_VIEW (int ) ;
 int gtk_tree_selection_unselect_all (int *) ;
 int * gtk_tree_view_get_selection (int *) ;

void
ghb_clear_subtitle_selection(GtkBuilder *builder)
{
    GtkTreeView *tv;
    GtkTreeSelection *tsel;

    tv = GTK_TREE_VIEW(GHB_WIDGET(builder, "subtitle_list_view"));


    tsel = gtk_tree_view_get_selection(tv);
    gtk_tree_selection_unselect_all(tsel);
}
