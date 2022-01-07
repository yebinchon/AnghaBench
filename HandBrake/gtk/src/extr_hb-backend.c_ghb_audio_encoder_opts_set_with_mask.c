
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int codec; int short_name; int name; } ;
typedef TYPE_1__ hb_encoder_t ;
typedef int gdouble ;
typedef int gchar ;
typedef int GtkTreeIter ;
typedef int GtkListStore ;
typedef int GtkComboBox ;


 int * GTK_LIST_STORE (int ) ;
 int HB_ACODEC_AUTO_PASS ;
 int TRUE ;
 int g_free (int *) ;
 int * g_strdup_printf (char*,int ) ;
 int gtk_combo_box_get_model (int *) ;
 int gtk_list_store_append (int *,int *) ;
 int gtk_list_store_clear (int *) ;
 int gtk_list_store_set (int *,int *,int ,int *,int,int ,int,int ,int,int ,int) ;
 TYPE_1__* hb_audio_encoder_get_next (TYPE_1__ const*) ;

void
ghb_audio_encoder_opts_set_with_mask(
    GtkComboBox *combo,
    int mask,
    int neg_mask)
{
    GtkTreeIter iter;
    GtkListStore *store;
    gchar *str;

    store = GTK_LIST_STORE(gtk_combo_box_get_model (combo));
    gtk_list_store_clear(store);

    const hb_encoder_t *enc;
    for (enc = hb_audio_encoder_get_next(((void*)0)); enc != ((void*)0);
         enc = hb_audio_encoder_get_next(enc))
    {
        if ((mask & enc->codec) && !(neg_mask & enc->codec) &&
            enc->codec != HB_ACODEC_AUTO_PASS)
        {
            gtk_list_store_append(store, &iter);
            str = g_strdup_printf("<small>%s</small>", enc->name);
            gtk_list_store_set(store, &iter,
                               0, str,
                               1, TRUE,
                               2, enc->short_name,
                               3, (gdouble)enc->codec,
                               -1);
            g_free(str);
        }
    }
}
