
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int hb_preset_index_t ;
typedef int GtkTreeView ;
typedef int GtkTreeSelection ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;


 int GHB_WIDGET (int ,char*) ;
 int * GTK_TREE_VIEW (int ) ;
 int * ghb_tree_get_index (int *,int *) ;
 scalar_t__ gtk_tree_selection_get_selected (int *,int **,int *) ;
 int * gtk_tree_view_get_selection (int *) ;

hb_preset_index_t *
get_selected_path(signal_user_data_t *ud)
{
    GtkTreeView *treeview;
    GtkTreeSelection *selection;
    GtkTreeModel *store;
    GtkTreeIter iter;

    treeview = GTK_TREE_VIEW(GHB_WIDGET(ud->builder, "presets_list"));
    selection = gtk_tree_view_get_selection(treeview);
    if (gtk_tree_selection_get_selected(selection, &store, &iter))
    {
        return ghb_tree_get_index(store, &iter);
    }
    return ((void*)0);
}
