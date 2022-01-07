
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gint ;
typedef int GtkTreeView ;
typedef int GtkTreeStore ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;


 int GHB_WIDGET (int ,char*) ;
 int GTK_TREE_MODEL (int *) ;
 int * GTK_TREE_STORE (int *) ;
 int * GTK_TREE_VIEW (int ) ;
 int g_free (char*) ;
 scalar_t__ ghb_find_lang_row (int ,int *,int ) ;
 int gtk_tree_model_get (int *,int *,int ,char**,int,int *,int) ;
 scalar_t__ gtk_tree_model_get_iter_first (int *,int *) ;
 scalar_t__ gtk_tree_model_iter_next (int *,int *) ;
 int gtk_tree_store_append (int *,int *,int *) ;
 int gtk_tree_store_clear (int *) ;
 int gtk_tree_store_insert_before (int *,int *,int *,int *) ;
 int gtk_tree_store_set (int *,int *,int ,char*,int,int ,int) ;
 int * gtk_tree_view_get_model (int *) ;

__attribute__((used)) static void subtitle_def_selected_lang_list_clear(signal_user_data_t *ud)
{
    GtkTreeView * tv;
    GtkTreeModel * selected_tm;
    GtkTreeStore * avail_ts;
    GtkTreeIter iter;

    tv = GTK_TREE_VIEW(GHB_WIDGET(ud->builder, "subtitle_avail_lang"));
    avail_ts = GTK_TREE_STORE(gtk_tree_view_get_model(tv));
    tv = GTK_TREE_VIEW(GHB_WIDGET(ud->builder,
                                           "subtitle_selected_lang"));
    selected_tm = gtk_tree_view_get_model(tv);
    if (gtk_tree_model_get_iter_first(selected_tm, &iter))
    {
        do
        {
            char * lang;
            gint index;
            GtkTreeIter pos, sibling;

            gtk_tree_model_get(selected_tm, &iter, 0, &lang, 1, &index, -1);
            if (ghb_find_lang_row(GTK_TREE_MODEL(avail_ts), &sibling, index))
            {
                gtk_tree_store_insert_before(avail_ts, &pos, ((void*)0), &sibling);
            }
            else
            {
                gtk_tree_store_append(avail_ts, &pos, ((void*)0));
            }
            gtk_tree_store_set(avail_ts, &pos, 0, lang, 1, index, -1);
            g_free(lang);
        } while (gtk_tree_model_iter_next(selected_tm, &iter));
    }
    gtk_tree_store_clear(GTK_TREE_STORE(selected_tm));
}
