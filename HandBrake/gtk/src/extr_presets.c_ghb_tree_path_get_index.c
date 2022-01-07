
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_preset_index_t ;
typedef int GtkTreePath ;


 int gtk_tree_path_get_depth (int *) ;
 int* gtk_tree_path_get_indices (int *) ;
 int * hb_preset_index_init (int*,int) ;

hb_preset_index_t*
ghb_tree_path_get_index(GtkTreePath *treepath)
{
    int *indices, len;

    indices = gtk_tree_path_get_indices(treepath);
    len = gtk_tree_path_get_depth(treepath);

    return hb_preset_index_init(indices, len);
}
