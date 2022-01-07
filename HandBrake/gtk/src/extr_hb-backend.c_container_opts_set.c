
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
struct TYPE_7__ {scalar_t__ format; int short_name; int name; } ;
typedef TYPE_2__ hb_container_t ;
typedef int gdouble ;
typedef int gchar ;
typedef int GtkTreeIter ;
typedef int GtkListStore ;
typedef int GtkComboBox ;


 int GHB_WIDGET (int ,int const*) ;
 int * GTK_COMBO_BOX (int ) ;
 int * GTK_LIST_STORE (int ) ;
 int TRUE ;
 int g_free (int *) ;
 int * g_strdup_printf (char*,int ) ;
 int gtk_combo_box_get_model (int *) ;
 int gtk_list_store_append (int *,int *) ;
 int gtk_list_store_clear (int *) ;
 int gtk_list_store_set (int *,int *,int ,int *,int,int ,int,int ,int,int ,int) ;
 TYPE_2__* hb_container_get_next (TYPE_2__ const*) ;

__attribute__((used)) static void
container_opts_set(signal_user_data_t *ud, const gchar *name,
                   void *opts, const void* data)
{
    (void)opts;
    (void)data;
    GtkTreeIter iter;
    GtkListStore *store;
    gchar *str;

    GtkComboBox *combo = GTK_COMBO_BOX(GHB_WIDGET(ud->builder, name));
    store = GTK_LIST_STORE(gtk_combo_box_get_model (combo));
    gtk_list_store_clear(store);

    const hb_container_t *mux;
    for (mux = hb_container_get_next(((void*)0)); mux != ((void*)0);
         mux = hb_container_get_next(mux))
    {
        gtk_list_store_append(store, &iter);
        str = g_strdup_printf("<small>%s</small>", mux->name);
        gtk_list_store_set(store, &iter,
                           0, str,
                           1, TRUE,
                           2, mux->short_name,
                           3, (gdouble)mux->format,
                           -1);
        g_free(str);
    }
}
