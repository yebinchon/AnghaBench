
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; scalar_t__ rate; } ;
typedef TYPE_1__ hb_rate_t ;
typedef double gdouble ;
typedef int gchar ;
typedef int GtkTreeIter ;
typedef int GtkListStore ;
typedef int GtkComboBox ;


 int * GTK_LIST_STORE (int ) ;
 int TRUE ;
 char* _ (char*) ;
 int g_free (int *) ;
 int * g_strdup_printf (char*,char*) ;
 int gtk_combo_box_get_model (int *) ;
 int gtk_list_store_append (int *,int *) ;
 int gtk_list_store_clear (int *) ;
 int gtk_list_store_set (int *,int *,int ,int *,int,int ,int,char*,int,double,int) ;
 TYPE_1__* hb_audio_samplerate_get_next (TYPE_1__ const*) ;

void
ghb_audio_samplerate_opts_set(GtkComboBox *combo)
{
    GtkTreeIter iter;
    GtkListStore *store;
    gchar *str;

    store = GTK_LIST_STORE(gtk_combo_box_get_model (combo));
    gtk_list_store_clear(store);

    gtk_list_store_append(store, &iter);
    str = g_strdup_printf("<small>%s</small>", _("Same as source"));
    gtk_list_store_set(store, &iter,
                       0, str,
                       1, TRUE,
                       2, "auto",
                       3, 0.0,
                       -1);
    g_free(str);

    const hb_rate_t *rate;
    for (rate = hb_audio_samplerate_get_next(((void*)0)); rate != ((void*)0);
         rate = hb_audio_samplerate_get_next(rate))
    {
        gtk_list_store_append(store, &iter);
        str = g_strdup_printf("<small>%s</small>", rate->name);
        gtk_list_store_set(store, &iter,
                           0, str,
                           1, TRUE,
                           2, rate->name,
                           3, (gdouble)rate->rate,
                           -1);
        g_free(str);
    }
}
