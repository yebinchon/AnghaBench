
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int builder; } ;
typedef TYPE_2__ signal_user_data_t ;
struct TYPE_9__ {int list_audio; } ;
typedef TYPE_3__ hb_title_t ;
struct TYPE_7__ {int description; } ;
struct TYPE_10__ {TYPE_1__ lang; } ;
typedef TYPE_4__ hb_audio_config_t ;
typedef scalar_t__ gint ;
typedef double gdouble ;
typedef int gchar ;
typedef int GtkTreeIter ;
typedef int GtkListStore ;
typedef int GtkComboBox ;


 int GHB_WIDGET (int ,int const*) ;
 int * GTK_COMBO_BOX (int ) ;
 int * GTK_LIST_STORE (int ) ;
 int TRUE ;
 int _ (char*) ;
 int g_free (int *) ;
 int * g_strdup_printf (char*,scalar_t__,...) ;
 int gtk_combo_box_get_model (int *) ;
 int gtk_combo_box_set_active (int *,int ) ;
 int gtk_list_store_append (int *,int *) ;
 int gtk_list_store_clear (int *) ;
 int gtk_list_store_set (int *,int *,int ,int *,int,int ,int,char*,int,double,int) ;
 TYPE_4__* hb_list_audio_config_item (int ,scalar_t__) ;
 scalar_t__ hb_list_count (int ) ;
 int snprintf (char*,int,char*,scalar_t__) ;

void
audio_track_opts_set(signal_user_data_t *ud, const gchar *name,
                     void *opts, const void* data)
{
    (void)opts;
    const hb_title_t *title = (const hb_title_t*)data;
    GtkTreeIter iter;
    GtkListStore *store;
    hb_audio_config_t * audio;
    gint ii;
    gint count = 0;
    gchar *opt;

    GtkComboBox *combo = GTK_COMBO_BOX(GHB_WIDGET(ud->builder, name));
    store = GTK_LIST_STORE(gtk_combo_box_get_model (combo));
    gtk_list_store_clear(store);
    if (title != ((void*)0))
    {
        count = hb_list_count( title->list_audio );
    }
    if( count <= 0 )
    {

        opt = g_strdup_printf("<small>%s</small>", _("No Audio"));

        gtk_list_store_append(store, &iter);
        gtk_list_store_set(store, &iter,
                           0, opt,
                           1, TRUE,
                           2, "none",
                           3, -1.0,
                           -1);
        g_free(opt);
        return;
    }
    for (ii = 0; ii < count; ii++)
    {
        char idx[4];
        audio = hb_list_audio_config_item(title->list_audio, ii);
        opt = g_strdup_printf("<small>%d - %s</small>",
                              ii + 1, audio->lang.description);
        snprintf(idx, 4, "%d", ii);

        gtk_list_store_append(store, &iter);
        gtk_list_store_set(store, &iter,
                           0, opt,
                           1, TRUE,
                           2, idx,
                           3, (gdouble)ii,
                           -1);
        g_free(opt);
    }
    gtk_combo_box_set_active (combo, 0);
}
