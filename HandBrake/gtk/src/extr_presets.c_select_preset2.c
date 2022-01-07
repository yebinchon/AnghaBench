
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int app; int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
struct TYPE_10__ {scalar_t__ depth; } ;
typedef TYPE_2__ hb_preset_index_t ;
typedef int GtkTreeView ;
typedef int GtkTreeSelection ;
typedef int GtkTreePath ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;
typedef int GSimpleAction ;


 int FALSE ;
 int GHB_WIDGET (int ,char*) ;
 int * GTK_TREE_VIEW (int ) ;
 int G_ACTION_MAP (int ) ;
 int * G_SIMPLE_ACTION (int ) ;
 int HB_PRESET_TYPE_CUSTOM ;
 int g_action_map_lookup_action (int ,char*) ;
 int g_simple_action_set_enabled (int *,int) ;
 int * ghb_tree_path_new_from_index (TYPE_2__*) ;
 scalar_t__ gtk_tree_model_get_iter (int *,int *,int *) ;
 scalar_t__ gtk_tree_model_get_iter_first (int *,int *) ;
 int gtk_tree_path_free (int *) ;
 int gtk_tree_selection_select_iter (int *,int *) ;
 int gtk_tree_view_expand_to_path (int *,int *) ;
 int * gtk_tree_view_get_model (int *) ;
 int * gtk_tree_view_get_selection (int *) ;
 int gtk_tree_view_scroll_to_cell (int *,int *,int *,int ,int ,int ) ;
 int preset_get_type (TYPE_2__*) ;
 int set_preset_menu_button_label (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void
select_preset2(signal_user_data_t *ud, hb_preset_index_t *path)
{
    GtkTreeView *treeview;
    GtkTreeSelection *selection;
    GtkTreeModel *store;
    GtkTreeIter iter;
    GtkTreePath *treepath;

    if (path == ((void*)0) || path->depth == 0)
        return;

    treeview = GTK_TREE_VIEW(GHB_WIDGET(ud->builder, "presets_list"));
    selection = gtk_tree_view_get_selection (treeview);
    store = gtk_tree_view_get_model (treeview);
    treepath = ghb_tree_path_new_from_index(path);
    if (treepath != ((void*)0))
    {
        gtk_tree_view_expand_to_path(treeview, treepath);
        if (gtk_tree_model_get_iter(store, &iter, treepath))
        {
            gtk_tree_selection_select_iter(selection, &iter);
        }
        else
        {
            if (gtk_tree_model_get_iter_first(store, &iter))
                gtk_tree_selection_select_iter(selection, &iter);
        }

        gtk_tree_view_scroll_to_cell(treeview, treepath, ((void*)0), FALSE, 0, 0);
        gtk_tree_path_free(treepath);
    }
    set_preset_menu_button_label(ud, path);

    int type = preset_get_type(path);
    GSimpleAction * action;

    action = G_SIMPLE_ACTION(g_action_map_lookup_action(
                             G_ACTION_MAP(ud->app), "preset-rename"));
    g_simple_action_set_enabled(action, type == HB_PRESET_TYPE_CUSTOM);
    action = G_SIMPLE_ACTION(g_action_map_lookup_action(
                             G_ACTION_MAP(ud->app), "preset-save"));
    g_simple_action_set_enabled(action, type == HB_PRESET_TYPE_CUSTOM);
}
