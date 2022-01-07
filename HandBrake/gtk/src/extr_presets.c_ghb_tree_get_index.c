
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_preset_index_t ;
typedef int GtkTreePath ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;


 int * gtk_tree_model_get_path (int *,int *) ;
 int gtk_tree_path_free (int *) ;
 int gtk_tree_path_get_depth (int *) ;
 int* gtk_tree_path_get_indices (int *) ;
 int * hb_preset_index_init (int*,int) ;

hb_preset_index_t*
ghb_tree_get_index(GtkTreeModel *store, GtkTreeIter *iter)
{
    GtkTreePath *treepath;
    int *indices, len;
    hb_preset_index_t *path;

    treepath = gtk_tree_model_get_path(store, iter);
    indices = gtk_tree_path_get_indices(treepath);
    len = gtk_tree_path_get_depth(treepath);
    path = hb_preset_index_init(indices, len);
    gtk_tree_path_free(treepath);

    return path;
}
