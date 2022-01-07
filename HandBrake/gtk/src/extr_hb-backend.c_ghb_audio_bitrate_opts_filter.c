
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;
typedef scalar_t__ gdouble ;
typedef int gboolean ;
typedef int GtkTreeIter ;
typedef int GtkListStore ;
typedef int GtkComboBox ;


 int FALSE ;
 int * GTK_LIST_STORE (int ) ;
 int GTK_TREE_MODEL (int *) ;
 int TRUE ;
 int g_debug (char*) ;
 int gtk_combo_box_get_model (int *) ;
 int gtk_list_store_set (int *,int *,int,int,int) ;
 int gtk_tree_model_get (int ,int *,int,scalar_t__*,int) ;
 scalar_t__ gtk_tree_model_get_iter_first (int ,int *) ;
 int gtk_tree_model_iter_next (int ,int *) ;

void
ghb_audio_bitrate_opts_filter(
    GtkComboBox *combo,
    gint first_rate,
    gint last_rate)
{
    GtkTreeIter iter;
    GtkListStore *store;
    gdouble ivalue;
    gboolean done = FALSE;

    g_debug("audio_bitrate_opts_filter ()\n");
    store = GTK_LIST_STORE(gtk_combo_box_get_model (combo));
    if (gtk_tree_model_get_iter_first (GTK_TREE_MODEL(store), &iter))
    {
        do
        {
            gtk_tree_model_get(GTK_TREE_MODEL(store), &iter, 3, &ivalue, -1);
            if ((int)ivalue < first_rate || (int)ivalue > last_rate)
            {
                gtk_list_store_set(store, &iter, 1, FALSE, -1);
            }
            else
            {
                gtk_list_store_set(store, &iter, 1, TRUE, -1);
            }
            done = !gtk_tree_model_iter_next (GTK_TREE_MODEL(store), &iter);
        } while (!done);
    }
}
