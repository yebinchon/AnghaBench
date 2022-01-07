
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int settings; int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gint ;
typedef scalar_t__ gboolean ;
typedef int GtkTreeView ;
typedef int GtkTreeSelection ;
typedef int GtkTreePath ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;
typedef int GhbValue ;


 int GHB_WIDGET (int ,char*) ;
 int * GTK_TREE_VIEW (int ) ;
 int * ghb_array_get (int *,int) ;
 int ghb_array_len (int *) ;
 scalar_t__ ghb_dict_get_bool (int *,char*) ;
 int * ghb_get_job_subtitle_list (int ) ;
 int * ghb_get_job_subtitle_search (int ) ;
 int * gtk_tree_model_get_path (int *,int *) ;
 int gtk_tree_path_free (int *) ;
 int* gtk_tree_path_get_indices (int *) ;
 scalar_t__ gtk_tree_selection_get_selected (int *,int **,int *) ;
 int * gtk_tree_view_get_selection (int *) ;

__attribute__((used)) static GhbValue*
subtitle_get_selected_settings(signal_user_data_t *ud, int *index)
{
    GtkTreeView *tv;
    GtkTreeSelection *ts;
    GtkTreeModel *tm;
    GtkTreeIter iter;
    GhbValue *subsettings = ((void*)0);

    tv = GTK_TREE_VIEW(GHB_WIDGET(ud->builder, "subtitle_list_view"));
    ts = gtk_tree_view_get_selection(tv);
    if (gtk_tree_selection_get_selected(ts, &tm, &iter))
    {
        GhbValue *subtitle_list, *subtitle_search;
        gboolean search;
        gint row, *indices;
        GtkTreePath *tp;


        tp = gtk_tree_model_get_path(tm, &iter);
        indices = gtk_tree_path_get_indices(tp);
        row = indices[0];
        gtk_tree_path_free(tp);

        subtitle_search = ghb_get_job_subtitle_search(ud->settings);
        search = ghb_dict_get_bool(subtitle_search, "Enable");
        if (search)
        {
            if (row == 0)
            {
                if (index != ((void*)0))
                    *index = -1;
                return subtitle_search;
            }
            row--;
        }

        subtitle_list = ghb_get_job_subtitle_list(ud->settings);
        if (row < 0 || row >= ghb_array_len(subtitle_list))
            return ((void*)0);

        subsettings = ghb_array_get(subtitle_list, row);
        if (index != ((void*)0))
            *index = row;
    }
    return subsettings;
}
