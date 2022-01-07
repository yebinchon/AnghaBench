
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
 int * GTK_TREE_VIEW (int ) ;
 scalar_t__ gtk_tree_selection_get_selected (int *,int **,int *) ;
 int * gtk_tree_view_get_selection (int *) ;
 int subtitle_refresh_list_row_ui (int *,int *,int ,int *) ;

__attribute__((used)) static void
subtitle_list_refresh_selected(signal_user_data_t *ud, GhbValue *subsettings)
{
    GtkTreeView *tv;
    GtkTreeSelection *ts;
    GtkTreeModel *tm;
    GtkTreeIter ti;

    tv = GTK_TREE_VIEW(GHB_WIDGET(ud->builder, "subtitle_list_view"));
    ts = gtk_tree_view_get_selection(tv);
    if (gtk_tree_selection_get_selected(ts, &tm, &ti))
    {
        subtitle_refresh_list_row_ui(tm, &ti, ud->settings, subsettings);
    }
}
