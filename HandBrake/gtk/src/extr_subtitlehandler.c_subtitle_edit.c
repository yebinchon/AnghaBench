
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int settings; int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int GtkWidget ;
typedef int GtkTreeView ;
typedef int GtkTreeSelection ;
typedef int GtkTreePath ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;
typedef scalar_t__ GtkResponseType ;
typedef int GhbValue ;


 int * GHB_WIDGET (int ,char*) ;
 int GTK_DIALOG (int *) ;
 scalar_t__ GTK_RESPONSE_OK ;
 int ghb_dict_set (int ,char*,int *) ;
 int ghb_get_job_settings (int ) ;
 int ghb_get_job_subtitle_settings (int ) ;
 int ghb_update_summary_info (TYPE_1__*) ;
 int * ghb_value_dup (int ) ;
 int ghb_value_free (int **) ;
 scalar_t__ gtk_dialog_run (int ) ;
 scalar_t__ gtk_tree_model_get_iter (int *,int *,int *) ;
 int gtk_tree_path_get_depth (int *) ;
 int gtk_tree_selection_select_iter (int *,int *) ;
 int * gtk_tree_view_get_model (int *) ;
 int * gtk_tree_view_get_selection (int *) ;
 int gtk_widget_hide (int *) ;
 int * subtitle_get_selected_settings (TYPE_1__*,int *) ;
 int subtitle_refresh_list_ui (TYPE_1__*) ;
 int subtitle_update_dialog_widgets (TYPE_1__*,int *) ;

__attribute__((used)) static void
subtitle_edit(GtkTreeView *tv, GtkTreePath *tp, signal_user_data_t *ud)
{
    GtkTreeModel *tm;
    GtkTreeSelection *ts;
    GtkTreeIter ti;

    ts = gtk_tree_view_get_selection(tv);
    tm = gtk_tree_view_get_model(tv);
    if (gtk_tree_path_get_depth(tp) > 1) return;
    if (gtk_tree_model_get_iter(tm, &ti, tp))
    {
        GhbValue *subsettings, *backup;

        gtk_tree_selection_select_iter(ts, &ti);


        backup = ghb_value_dup(ghb_get_job_subtitle_settings(ud->settings));


        GtkResponseType response;
        GtkWidget *dialog = GHB_WIDGET(ud->builder, "subtitle_dialog");
        response = gtk_dialog_run(GTK_DIALOG(dialog));
        gtk_widget_hide(dialog);
        if (response != GTK_RESPONSE_OK)
        {
            ghb_dict_set(ghb_get_job_settings(ud->settings),
                         "Subtitle", backup);
            subsettings = subtitle_get_selected_settings(ud, ((void*)0));
            if (subsettings != ((void*)0))
            {
                subtitle_update_dialog_widgets(ud, subsettings);
            }
            subtitle_refresh_list_ui(ud);
        }
        else
        {
            ghb_value_free(&backup);
        }
        ghb_update_summary_info(ud);
    }
}
