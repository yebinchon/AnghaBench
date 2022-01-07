
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int builder; } ;
typedef TYPE_2__ signal_user_data_t ;
typedef size_t gint ;
typedef int gchar ;
struct TYPE_7__ {size_t count; TYPE_1__* map; } ;
typedef TYPE_3__ combo_opts_t ;
struct TYPE_5__ {int ivalue; int shortOpt; int option; } ;
typedef int GtkTreeIter ;
typedef int GtkListStore ;
typedef int GtkComboBox ;


 int GHB_WIDGET (int ,int const*) ;
 int * GTK_COMBO_BOX (int ) ;
 int * GTK_LIST_STORE (int ) ;
 int TRUE ;
 int g_free (int *) ;
 int * g_strdup_printf (char*,int ) ;
 int gettext (int ) ;
 int gtk_combo_box_get_model (int *) ;
 int gtk_list_store_append (int *,int *) ;
 int gtk_list_store_clear (int *) ;
 int gtk_list_store_set (int *,int *,int ,int *,int,int ,int,int ,int,int ,int) ;

__attribute__((used)) static void
small_opts_set(signal_user_data_t *ud, const gchar *name,
               void *vopts, const void* data)
{
    (void)data;
    combo_opts_t *opts = (combo_opts_t*)vopts;
    GtkTreeIter iter;
    GtkListStore *store;
    gint ii;
    gchar *str;

    if (name == ((void*)0) || opts == ((void*)0)) return;
    GtkComboBox *combo = GTK_COMBO_BOX(GHB_WIDGET(ud->builder, name));
    store = GTK_LIST_STORE(gtk_combo_box_get_model (combo));
    gtk_list_store_clear(store);
    for (ii = 0; ii < opts->count; ii++)
    {
        gtk_list_store_append(store, &iter);
        str = g_strdup_printf("<small>%s</small>",
                              gettext(opts->map[ii].option));
        gtk_list_store_set(store, &iter,
                           0, str,
                           1, TRUE,
                           2, opts->map[ii].shortOpt,
                           3, opts->map[ii].ivalue,
                           -1);
        g_free(str);
    }
}
