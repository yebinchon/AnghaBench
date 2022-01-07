
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int settings; int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
struct TYPE_9__ {int iso639_2; } ;
typedef TYPE_2__ iso639_lang_t ;
typedef int GtkTreeView ;
typedef int GtkTreeStore ;
typedef int GtkTreeSelection ;
typedef int GtkTreePath ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;
typedef int GhbValue ;


 int FALSE ;
 int GHB_WIDGET (int ,char*) ;
 int GTK_TREE_MODEL (int *) ;
 int * GTK_TREE_STORE (int *) ;
 int * GTK_TREE_VIEW (int ) ;
 int g_free (char*) ;
 int ghb_array_append (int *,int *) ;
 scalar_t__ ghb_array_len (int *) ;
 int ghb_clear_presets_selection (TYPE_1__*) ;
 int * ghb_dict_get_value (int ,char*) ;
 TYPE_2__* ghb_iso639_lookup_by_int (int) ;
 int * ghb_string_value_new (int ) ;
 int gtk_tree_model_get (int *,int *,int ,char**,int,int*,int) ;
 int * gtk_tree_model_get_path (int ,int *) ;
 int gtk_tree_path_free (int *) ;
 int gtk_tree_selection_select_iter (int *,int *) ;
 int gtk_tree_store_append (int *,int *,int *) ;
 int gtk_tree_store_remove (int *,int *) ;
 int gtk_tree_store_set (int *,int *,int ,char*,int,int,int) ;
 int * gtk_tree_view_get_model (int *) ;
 int * gtk_tree_view_get_selection (int *) ;
 int gtk_tree_view_scroll_to_cell (int *,int *,int *,int ,int ,int ) ;
 int subtitle_update_pref_lang (TYPE_1__*,TYPE_2__ const*) ;

void
subtitle_add_lang_iter(GtkTreeModel *tm, GtkTreeIter *iter,
                       signal_user_data_t *ud)
{
    GtkTreeView * selected;
    GtkTreeStore * selected_ts;
    GtkTreeIter pos;
    GtkTreePath * tp;
    char * lang;
    int index;
    const iso639_lang_t * iso_lang;
    GhbValue * glang, * slang_list;
    GtkTreeSelection * tsel;

    selected = GTK_TREE_VIEW(GHB_WIDGET(ud->builder, "subtitle_selected_lang"));
    selected_ts = GTK_TREE_STORE(gtk_tree_view_get_model(selected));
    tsel = gtk_tree_view_get_selection(selected);


    gtk_tree_model_get(tm, iter, 0, &lang, 1, &index, -1);
    gtk_tree_store_append(selected_ts, &pos, ((void*)0));
    gtk_tree_store_set(selected_ts, &pos, 0, lang, 1, index, -1);
    g_free(lang);



    tp = gtk_tree_model_get_path(GTK_TREE_MODEL(selected_ts), &pos);
    gtk_tree_selection_select_iter(tsel, &pos);
    gtk_tree_view_scroll_to_cell(selected, tp, ((void*)0), FALSE, 0, 0);
    gtk_tree_path_free(tp);


    gtk_tree_store_remove(GTK_TREE_STORE(tm), iter);


    iso_lang = ghb_iso639_lookup_by_int(index);
    glang = ghb_string_value_new(iso_lang->iso639_2);
    slang_list = ghb_dict_get_value(ud->settings, "SubtitleLanguageList");
    if (ghb_array_len(slang_list) == 0)
    {
        subtitle_update_pref_lang(ud, iso_lang);
    }
    ghb_array_append(slang_list, glang);
    ghb_clear_presets_selection(ud);
}
