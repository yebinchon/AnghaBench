
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int builder; int settings; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef scalar_t__ gint ;
typedef int GtkTreeView ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;
typedef int GhbValue ;


 int GHB_WIDGET (int ,char*) ;
 int GTK_TREE_STORE (int *) ;
 int * GTK_TREE_VIEW (int ) ;
 int audio_refresh_list_row_ui (int *,int *,TYPE_1__*,int *) ;
 int * ghb_array_get (int *,scalar_t__) ;
 scalar_t__ ghb_array_len (int *) ;
 int ghb_clear_audio_list_ui (int ) ;
 int * ghb_get_job_audio_list (int ) ;
 scalar_t__ gtk_tree_model_iter_n_children (int *,int *) ;
 int gtk_tree_model_iter_nth_child (int *,int *,int *,scalar_t__) ;
 int gtk_tree_store_append (int ,int *,int *) ;
 int * gtk_tree_view_get_model (int *) ;

__attribute__((used)) static void
audio_refresh_list_ui(signal_user_data_t *ud)
{
    GhbValue *audio_list;
    GhbValue *asettings;
    gint ii, count, tm_count;
    GtkTreeView *tv;
    GtkTreeModel *tm;
    GtkTreeIter ti;

    tv = GTK_TREE_VIEW(GHB_WIDGET(ud->builder, "audio_list_view"));
    tm = gtk_tree_view_get_model(tv);

    tm_count = gtk_tree_model_iter_n_children(tm, ((void*)0));

    audio_list = ghb_get_job_audio_list(ud->settings);
    count = ghb_array_len(audio_list);
    if (count != tm_count)
    {
        ghb_clear_audio_list_ui(ud->builder);
        for (ii = 0; ii < count; ii++)
        {
            gtk_tree_store_append(GTK_TREE_STORE(tm), &ti, ((void*)0));
        }
    }
    for (ii = 0; ii < count; ii++)
    {
        gtk_tree_model_iter_nth_child(tm, &ti, ((void*)0), ii);
        asettings = ghb_array_get(audio_list, ii);
        audio_refresh_list_row_ui(tm, &ti, ud, asettings);
    }
}
