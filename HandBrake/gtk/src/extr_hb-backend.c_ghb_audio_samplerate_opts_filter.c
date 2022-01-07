
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;
typedef double gdouble ;
typedef int GtkTreeIter ;
typedef int GtkListStore ;
typedef int GtkComboBox ;


 int * GTK_LIST_STORE (int ) ;
 int GTK_TREE_MODEL (int *) ;
 int TRUE ;
 int gtk_combo_box_get_model (int *) ;
 int gtk_list_store_set (int *,int *,int,int ,int) ;
 int gtk_tree_model_get (int ,int *,int,double*,int) ;
 int gtk_tree_model_get_iter_first (int ,int *) ;
 scalar_t__ gtk_tree_model_iter_next (int ,int *) ;
 int hb_audio_samplerate_is_supported (double,int ) ;

void
ghb_audio_samplerate_opts_filter(GtkComboBox *combo, gint acodec)
{
    GtkTreeIter iter;
    GtkListStore *store;
    gdouble irate;

    store = GTK_LIST_STORE(gtk_combo_box_get_model(combo));
    if (!gtk_tree_model_get_iter_first( GTK_TREE_MODEL(store), &iter))
        return;

    do
    {
        gtk_tree_model_get(GTK_TREE_MODEL(store), &iter, 3, &irate, -1);


        gtk_list_store_set(store, &iter, 1, irate == 0.0 ? TRUE :
                hb_audio_samplerate_is_supported(irate, acodec), -1);
    } while (gtk_tree_model_iter_next(GTK_TREE_MODEL(store), &iter));
}
