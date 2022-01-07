
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
struct TYPE_8__ {scalar_t__ depth; } ;
typedef TYPE_2__ hb_preset_index_t ;
typedef int GtkTreeView ;
typedef int GtkTreeStore ;
typedef int GtkTreePath ;
typedef int GtkTreeIter ;


 int GHB_WIDGET (int ,char*) ;
 int GTK_TREE_MODEL (int *) ;
 int * GTK_TREE_STORE (int ) ;
 int * GTK_TREE_VIEW (int ) ;
 int free (TYPE_2__*) ;
 int * ghb_tree_path_new_from_index (TYPE_2__*) ;
 scalar_t__ gtk_tree_model_get_iter (int ,int *,int *) ;
 int gtk_tree_path_free (int *) ;
 int gtk_tree_store_set (int *,int *,int,int,int,int ,int) ;
 int gtk_tree_view_get_model (int *) ;
 TYPE_2__* hb_presets_get_default_index () ;

void
ghb_presets_list_clear_default(signal_user_data_t *ud)
{
    hb_preset_index_t *path;

    path = hb_presets_get_default_index();
    if (path == ((void*)0) || path->depth == 0)
        return;

    GtkTreeView *treeview;
    GtkTreeStore *store;
    GtkTreePath *treepath;
    GtkTreeIter iter;

    treeview = GTK_TREE_VIEW(GHB_WIDGET(ud->builder, "presets_list"));
    store = GTK_TREE_STORE(gtk_tree_view_get_model(treeview));
    treepath = ghb_tree_path_new_from_index(path);
    if (treepath)
    {
        if (gtk_tree_model_get_iter(GTK_TREE_MODEL(store), &iter, treepath))
        {
            gtk_tree_store_set(store, &iter,
                        1, 400,
                        2, 0 ,
                        -1);
        }
        gtk_tree_path_free(treepath);
    }
    free(path);
}
