
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkTreeView ;
typedef int GtkTreeStore ;
typedef int GtkTreeSelection ;
typedef int GtkBuilder ;


 int GHB_WIDGET (int *,char*) ;
 int * GTK_TREE_STORE (int ) ;
 int * GTK_TREE_VIEW (int ) ;
 int gtk_tree_selection_unselect_all (int *) ;
 int gtk_tree_store_clear (int *) ;
 int gtk_tree_view_get_model (int *) ;
 int * gtk_tree_view_get_selection (int *) ;

__attribute__((used)) static void
clear_subtitle_list_ui(GtkBuilder *builder)
{
    GtkTreeView *tv;
    GtkTreeStore *ts;
    GtkTreeSelection *tsel;

    tv = GTK_TREE_VIEW(GHB_WIDGET(builder, "subtitle_list_view"));
    ts = GTK_TREE_STORE(gtk_tree_view_get_model(tv));


    tsel = gtk_tree_view_get_selection(tv);
    gtk_tree_selection_unselect_all(tsel);
    gtk_tree_store_clear(ts);
}
