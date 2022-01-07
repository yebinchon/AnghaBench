
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
struct TYPE_7__ {scalar_t__ index; int short_name; int * name; } ;
typedef TYPE_2__ hb_filter_param_t ;
typedef size_t gint ;
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
 int gettext (int *) ;
 int gtk_combo_box_get_model (int *) ;
 int gtk_list_store_append (int *,int *) ;
 int gtk_list_store_clear (int *) ;
 int gtk_list_store_set (int *,int *,int ,int *,int,int ,int,int ,int,double,int) ;
 TYPE_2__* hb_filter_param_get_presets (int) ;
 TYPE_2__* hb_filter_param_get_tunes (int) ;

__attribute__((used)) static void
filter_opts_set2(signal_user_data_t *ud, const gchar *name,
                 int filter_id, int preset)
{
    GtkTreeIter iter;
    GtkListStore *store;
    gint ii;
    gchar *str;

    if (name == ((void*)0)) return;
    GtkComboBox *combo = GTK_COMBO_BOX(GHB_WIDGET(ud->builder, name));
    store = GTK_LIST_STORE(gtk_combo_box_get_model (combo));
    gtk_list_store_clear(store);
    hb_filter_param_t * param;
    if (preset)
    {
        param = hb_filter_param_get_presets(filter_id);
    }
    else
    {
        param = hb_filter_param_get_tunes(filter_id);
    }
    for (ii = 0; param != ((void*)0) && param[ii].name != ((void*)0); ii++)
    {
        gtk_list_store_append(store, &iter);
        str = g_strdup_printf("<small>%s</small>",
                              gettext(param[ii].name));
        gtk_list_store_set(store, &iter,
                           0, str,
                           1, TRUE,
                           2, param[ii].short_name,
                           3, (double)param[ii].index,
                           -1);
        g_free(str);
    }
}
