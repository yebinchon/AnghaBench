
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int signal_user_data_t ;
struct TYPE_5__ {scalar_t__* native_name; char* eng_name; int iso639_2; } ;
typedef TYPE_1__ iso639_lang_t ;
typedef int GtkTreeView ;
typedef int GtkTreeStore ;
typedef int GtkTreeIter ;


 int * GTK_TREE_STORE (int ) ;
 int ghb_init_lang_list_model (int *) ;
 int gtk_tree_store_append (int *,int *,int *) ;
 int gtk_tree_store_set (int *,int *,int ,char const*,int,int,int) ;
 int gtk_tree_view_get_model (int *) ;
 TYPE_1__* lang_get_any () ;
 TYPE_1__* lang_get_next (TYPE_1__ const*) ;
 int lang_lookup_index (int ) ;

void ghb_init_lang_list(GtkTreeView *tv, signal_user_data_t *ud)
{
    GtkTreeIter iter;
    GtkTreeStore * ts;

    ghb_init_lang_list_model(tv);
    ts = GTK_TREE_STORE(gtk_tree_view_get_model(tv));

    const iso639_lang_t *iso639;
    for (iso639 = lang_get_any(); iso639 != ((void*)0);
         iso639 = lang_get_next(iso639))
    {
        int index = lang_lookup_index(iso639->iso639_2);
        const char * lang;
        if (iso639->native_name != ((void*)0) && iso639->native_name[0] != 0)
        {
            lang = iso639->native_name;
        }
        else
        {
            lang = iso639->eng_name;
        }
        gtk_tree_store_append(ts, &iter, ((void*)0));
        gtk_tree_store_set(ts, &iter, 0, lang, 1, index, -1);
    }
}
