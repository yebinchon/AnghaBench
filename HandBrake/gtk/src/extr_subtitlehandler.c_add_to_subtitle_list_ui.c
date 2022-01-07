
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int settings; int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int GtkTreeView ;
typedef int GtkTreeSelection ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;
typedef int GhbValue ;


 int GHB_WIDGET (int ,char*) ;
 int GTK_TREE_STORE (int *) ;
 int * GTK_TREE_VIEW (int ) ;
 int gtk_tree_selection_select_iter (int *,int *) ;
 int gtk_tree_store_append (int ,int *,int *) ;
 int * gtk_tree_view_get_model (int *) ;
 int * gtk_tree_view_get_selection (int *) ;
 int subtitle_refresh_list_row_ui (int *,int *,int ,int *) ;

__attribute__((used)) static void
add_to_subtitle_list_ui(signal_user_data_t *ud, GhbValue *subsettings)
{
    GtkTreeView *tv;
    GtkTreeIter ti;
    GtkTreeModel *tm;
    GtkTreeSelection *ts;

    tv = GTK_TREE_VIEW(GHB_WIDGET(ud->builder, "subtitle_list_view"));
    ts = gtk_tree_view_get_selection(tv);
    tm = gtk_tree_view_get_model(tv);

    gtk_tree_store_append(GTK_TREE_STORE(tm), &ti, ((void*)0));
    subtitle_refresh_list_row_ui(tm, &ti, ud->settings, subsettings);

    gtk_tree_selection_select_iter(ts, &ti);
}
