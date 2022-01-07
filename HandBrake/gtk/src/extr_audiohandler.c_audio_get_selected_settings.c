
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int settings; int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gint ;
typedef int GtkTreeView ;
typedef int GtkTreeSelection ;
typedef int GtkTreePath ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;
typedef int GhbValue ;


 int GHB_WIDGET (int ,char*) ;
 int * GTK_TREE_VIEW (int ) ;
 int * ghb_array_get (int const*,int) ;
 int ghb_array_len (int const*) ;
 int * ghb_get_job_audio_list (int ) ;
 int * gtk_tree_model_get_path (int *,int *) ;
 int gtk_tree_path_free (int *) ;
 int* gtk_tree_path_get_indices (int *) ;
 scalar_t__ gtk_tree_selection_get_selected (int *,int **,int *) ;
 int * gtk_tree_view_get_selection (int *) ;

__attribute__((used)) static GhbValue*
audio_get_selected_settings(signal_user_data_t *ud, int *index)
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

    tv = GTK_TREE_VIEW(GHB_WIDGET(ud->builder, "audio_list_view"));
    ts = gtk_tree_view_get_selection (tv);
    if (gtk_tree_selection_get_selected(ts, &tm, &ti))
    {

        tp = gtk_tree_model_get_path (tm, &ti);
        indices = gtk_tree_path_get_indices (tp);
        row = indices[0];
        gtk_tree_path_free(tp);

        if (row < 0) return ((void*)0);

        audio_list = ghb_get_job_audio_list(ud->settings);
        if (row >= ghb_array_len(audio_list))
            return ((void*)0);

        asettings = ghb_array_get(audio_list, row);
        if (index != ((void*)0))
            *index = row;
    }
    return asettings;
}
