
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int settings; int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int iso639_lang_t ;
typedef int gint ;
typedef int gchar ;
typedef int GtkTreeView ;
typedef int GtkTreeStore ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;
typedef int GhbValue ;


 int GHB_WIDGET (int ,char*) ;
 int * GTK_TREE_STORE (int *) ;
 int * GTK_TREE_VIEW (int ) ;
 int g_free (int *) ;
 int * ghb_array_get (int *,int) ;
 int ghb_array_len (int *) ;
 int * ghb_array_new () ;
 int ghb_array_remove (int *,int) ;
 int * ghb_dict_get_value (int ,char*) ;
 int ghb_dict_set (int ,char*,int *) ;
 scalar_t__ ghb_find_lang_row (int *,int *,int) ;
 int * ghb_iso639_lookup_by_int (int) ;
 int ghb_lookup_lang (int *) ;
 int gtk_tree_model_get (int *,int *,int ,int **,int,int *,int) ;
 int gtk_tree_store_append (int *,int *,int *) ;
 int gtk_tree_store_remove (int *,int *) ;
 int gtk_tree_store_set (int *,int *,int ,int *,int,int ,int) ;
 int * gtk_tree_view_get_model (int *) ;
 int subtitle_def_selected_lang_list_clear (TYPE_1__*) ;
 int subtitle_update_pref_lang (TYPE_1__*,int const*) ;

__attribute__((used)) static void subtitle_def_lang_list_init(signal_user_data_t *ud)
{
    GhbValue * lang_list;
    GtkTreeView * tv;
    GtkTreeModel * avail;
    GtkTreeStore * selected;
    int ii, count;

    tv = GTK_TREE_VIEW(GHB_WIDGET(ud->builder, "subtitle_avail_lang"));
    avail = gtk_tree_view_get_model(tv);
    tv = GTK_TREE_VIEW(GHB_WIDGET(ud->builder, "subtitle_selected_lang"));
    selected = GTK_TREE_STORE(gtk_tree_view_get_model(tv));


    subtitle_def_selected_lang_list_clear(ud);

    lang_list = ghb_dict_get_value(ud->settings, "SubtitleLanguageList");
    if (lang_list == ((void*)0))
    {
        lang_list = ghb_array_new();
        ghb_dict_set(ud->settings, "SubtitleLanguageList", lang_list);
    }

    count = ghb_array_len(lang_list);
    for (ii = 0; ii < count; )
    {
        GhbValue * lang_val = ghb_array_get(lang_list, ii);
        int idx = ghb_lookup_lang(lang_val);
        GtkTreeIter iter;

        if (ii == 0)
        {
            const iso639_lang_t *lang;
            lang = ghb_iso639_lookup_by_int(idx);
            subtitle_update_pref_lang(ud, lang);
        }
        if (ghb_find_lang_row(avail, &iter, idx))
        {
            gchar * lang;
            gint index;
            GtkTreeIter pos;

            gtk_tree_model_get(avail, &iter, 0, &lang, 1, &index, -1);
            gtk_tree_store_append(selected, &pos, ((void*)0));
            gtk_tree_store_set(selected, &pos, 0, lang, 1, index, -1);
            g_free(lang);
            gtk_tree_store_remove(GTK_TREE_STORE(avail), &iter);
            ii++;
        }
        else
        {


            ghb_array_remove(lang_list, ii);
            count--;
        }
    }
    if (count == 0)
    {
        subtitle_update_pref_lang(ud, ((void*)0));
    }
}
