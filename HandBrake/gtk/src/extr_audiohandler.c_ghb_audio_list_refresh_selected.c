
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int settings; int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef scalar_t__ gint ;
typedef int GtkTreeView ;
typedef int GtkTreeSelection ;
typedef int GtkTreePath ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;
typedef int GhbValue ;


 int GHB_WIDGET (int ,char*) ;
 int * GTK_TREE_VIEW (int ) ;
 int audio_refresh_list_row_ui (int *,int *,TYPE_1__*,int *) ;
 int g_debug (char*) ;
 int * ghb_array_get (int const*,scalar_t__) ;
 scalar_t__ ghb_array_len (int const*) ;
 int * ghb_get_job_audio_list (int ) ;
 int * gtk_tree_model_get_path (int *,int *) ;
 int gtk_tree_path_free (int *) ;
 scalar_t__* gtk_tree_path_get_indices (int *) ;
 scalar_t__ gtk_tree_selection_get_selected (int *,int **,int *) ;
 int * gtk_tree_view_get_selection (int *) ;

void
ghb_audio_list_refresh_selected(signal_user_data_t *ud)
{
    GtkTreeView *tv;
    GtkTreePath *tp;
    GtkTreeSelection *ts;
    GtkTreeModel *tm;
    GtkTreeIter ti;
    gint *indices;
    gint row;
    GhbValue *asettings = ((void*)0);
    const GhbValue *audio_list;

    g_debug("ghb_audio_list_refresh_selected ()");
    tv = GTK_TREE_VIEW(GHB_WIDGET(ud->builder, "audio_list_view"));
    ts = gtk_tree_view_get_selection (tv);
    if (gtk_tree_selection_get_selected(ts, &tm, &ti))
    {

        tp = gtk_tree_model_get_path (tm, &ti);
        indices = gtk_tree_path_get_indices (tp);
        row = indices[0];
        gtk_tree_path_free(tp);
        if (row < 0) return;

        audio_list = ghb_get_job_audio_list(ud->settings);
        if (row >= ghb_array_len(audio_list))
            return;

        asettings = ghb_array_get(audio_list, row);
        audio_refresh_list_row_ui(tm, &ti, ud, asettings);
    }
}
