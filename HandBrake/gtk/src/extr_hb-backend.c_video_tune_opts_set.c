
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int builder; int settings; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef size_t gint ;
typedef scalar_t__ gdouble ;
typedef char gchar ;
typedef int GtkWidget ;
typedef int GtkTreeIter ;
typedef int GtkListStore ;
typedef int GtkComboBox ;
typedef int GhbValue ;


 int * GHB_WIDGET (int ,char const*) ;
 int * GTK_COMBO_BOX (int *) ;
 int * GTK_LIST_STORE (int ) ;
 int HB_VCODEC_X264_MASK ;
 int HB_VCODEC_X265_MASK ;
 int TRUE ;
 char const* const _ (char*) ;
 int * ghb_dict_get (int ,char*) ;
 int ghb_get_video_encoder (int ) ;
 int gtk_combo_box_get_model (int *) ;
 int gtk_list_store_append (int *,int *) ;
 int gtk_list_store_clear (int *) ;
 int gtk_list_store_set (int *,int *,int ,char const* const,int,int ,int,char const* const,int,scalar_t__,int) ;
 int gtk_widget_set_visible (int *,int) ;
 char** hb_video_encoder_get_tunes (int) ;
 int strcmp (char const* const,char*) ;

__attribute__((used)) static void
video_tune_opts_set(signal_user_data_t *ud, const gchar *name,
                    void *opts, const void* data)
{
    (void)opts;
    (void)data;
    GtkTreeIter iter;
    GtkListStore *store;
    gint ii, count = 0;



    GhbValue *value = ghb_dict_get(ud->settings, "VideoEncoder");
    if (value == ((void*)0)) return;

    int encoder = ghb_get_video_encoder(ud->settings);
    const char * const *tunes;
    tunes = hb_video_encoder_get_tunes(encoder);

    while (tunes && tunes[count]) count++;
    GtkWidget *w = GHB_WIDGET(ud->builder, "VideoTune");
    gtk_widget_set_visible(w, count > 0);
    w = GHB_WIDGET(ud->builder, "VideoTuneLabel");
    gtk_widget_set_visible(w, count > 0);
    if (count == 0) return;

    GtkComboBox *combo = GTK_COMBO_BOX(GHB_WIDGET(ud->builder, name));
    store = GTK_LIST_STORE(gtk_combo_box_get_model (combo));
    gtk_list_store_clear(store);

    gtk_list_store_append(store, &iter);
    gtk_list_store_set(store, &iter,
                       0, _("None"),
                       1, TRUE,
                       2, "none",
                       3, (gdouble)0,
                       -1);

    for (ii = 0; ii < count; ii++)
    {
        if (((encoder & HB_VCODEC_X264_MASK) &&
             !strcmp(tunes[ii], "fastdecode")) ||
            ((encoder & (HB_VCODEC_X264_MASK | HB_VCODEC_X265_MASK)) &&
             !strcmp(tunes[ii], "zerolatency")))
        {
            continue;
        }
        gtk_list_store_append(store, &iter);
        gtk_list_store_set(store, &iter,
                           0, tunes[ii],
                           1, TRUE,
                           2, tunes[ii],
                           3, (gdouble)ii + 1,
                           -1);
    }
}
