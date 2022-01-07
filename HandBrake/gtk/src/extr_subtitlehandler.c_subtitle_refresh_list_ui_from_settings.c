
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int settings; int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef scalar_t__ gint ;
typedef scalar_t__ gboolean ;
typedef int GtkWidget ;
typedef int GtkTreeView ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;
typedef int GhbValue ;


 int * GHB_WIDGET (int ,char*) ;
 int GTK_TREE_STORE (int *) ;
 int * GTK_TREE_VIEW (int *) ;
 int clear_subtitle_list_ui (int ) ;
 int * ghb_array_get (int *,scalar_t__) ;
 scalar_t__ ghb_array_len (int *) ;
 scalar_t__ ghb_dict_get_bool (int *,char*) ;
 int * ghb_get_job_subtitle_list (int *) ;
 int * ghb_get_job_subtitle_search (int *) ;
 scalar_t__ gtk_tree_model_iter_n_children (int *,int *) ;
 int gtk_tree_model_iter_nth_child (int *,int *,int *,scalar_t__) ;
 int gtk_tree_store_append (int ,int *,int *) ;
 int * gtk_tree_view_get_model (int *) ;
 int gtk_widget_set_sensitive (int *,int) ;
 int subtitle_refresh_list_row_ui (int *,int *,int ,int *) ;

__attribute__((used)) static void
subtitle_refresh_list_ui_from_settings(signal_user_data_t *ud, GhbValue *settings)
{
    GtkTreeView *tv;
    GtkTreeModel *tm;
    GtkTreeIter ti;
    GhbValue *subtitle_list, *subtitle_search;
    GhbValue *subsettings;
    gint ii, count, tm_count;
    gboolean search;

    tv = GTK_TREE_VIEW(GHB_WIDGET(ud->builder, "subtitle_list_view"));
    tm = gtk_tree_view_get_model(tv);

    tm_count = gtk_tree_model_iter_n_children(tm, ((void*)0));

    subtitle_list = ghb_get_job_subtitle_list(settings);
    subtitle_search = ghb_get_job_subtitle_search(settings);
    search = ghb_dict_get_bool(subtitle_search, "Enable");
    count = ghb_array_len(subtitle_list);
    if (count + search != tm_count)
    {
        clear_subtitle_list_ui(ud->builder);
        for (ii = 0; ii < count + search; ii++)
        {
            gtk_tree_store_append(GTK_TREE_STORE(tm), &ti, ((void*)0));
        }
    }

    GtkWidget *w = GHB_WIDGET(ud->builder, "subtitle_add_fas");
    gtk_widget_set_sensitive(w, !search);
    if (search)
    {

        gtk_tree_model_iter_nth_child(tm, &ti, ((void*)0), 0);
        subtitle_refresh_list_row_ui(tm, &ti, ud->settings, subtitle_search);
    }
    for (ii = 0; ii < count; ii++)
    {
        gtk_tree_model_iter_nth_child(tm, &ti, ((void*)0), ii + search);
        subsettings = ghb_array_get(subtitle_list, ii);
        subtitle_refresh_list_row_ui(tm, &ti, ud->settings, subsettings);
    }
}
