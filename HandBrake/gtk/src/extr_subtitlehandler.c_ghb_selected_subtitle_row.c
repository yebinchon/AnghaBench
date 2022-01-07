
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gint ;
typedef int GtkTreeView ;
typedef int GtkTreeSelection ;
typedef int GtkTreePath ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;


 int GHB_WIDGET (int ,char*) ;
 int * GTK_TREE_VIEW (int ) ;
 int * gtk_tree_model_get_path (int *,int *) ;
 int gtk_tree_path_free (int *) ;
 int* gtk_tree_path_get_indices (int *) ;
 scalar_t__ gtk_tree_selection_get_selected (int *,int **,int *) ;
 int * gtk_tree_view_get_selection (int *) ;

gint
ghb_selected_subtitle_row(signal_user_data_t *ud)
{
    GtkTreeView *tv;
    GtkTreePath *tp;
    GtkTreeSelection *ts;
    GtkTreeModel *tm;
    GtkTreeIter iter;
    gint *indices;
    gint row = -1;

    tv = GTK_TREE_VIEW(GHB_WIDGET(ud->builder, "subtitle_list_view"));
    ts = gtk_tree_view_get_selection(tv);
    if (gtk_tree_selection_get_selected(ts, &tm, &iter))
    {

        tp = gtk_tree_model_get_path(tm, &iter);
        indices = gtk_tree_path_get_indices(tp);
        row = indices[0];
        gtk_tree_path_free(tp);
    }
    return row;
}
