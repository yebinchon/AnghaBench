
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
struct TYPE_7__ {char* name; scalar_t__ rate; } ;
typedef TYPE_2__ hb_rate_t ;
typedef double gdouble ;
typedef char gchar ;
typedef int GtkTreeIter ;
typedef int GtkListStore ;
typedef int GtkComboBox ;


 int GHB_WIDGET (int ,char const*) ;
 int * GTK_COMBO_BOX (int ) ;
 int * GTK_LIST_STORE (int ) ;
 int TRUE ;
 char* _ (char*) ;
 int g_free (char*) ;
 char* g_strdup_printf (char*,char*,char*) ;
 int gtk_combo_box_get_model (int *) ;
 int gtk_list_store_append (int *,int *) ;
 int gtk_list_store_clear (int *) ;
 int gtk_list_store_set (int *,int *,int ,char*,int,int ,int,char*,int,double,int) ;
 TYPE_2__* hb_video_framerate_get_next (TYPE_2__ const*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
video_framerate_opts_set(signal_user_data_t *ud, const gchar *name,
                         void *opts, const void* data)
{
    (void)opts;
    (void)data;
    GtkTreeIter iter;
    GtkListStore *store;

    GtkComboBox *combo = GTK_COMBO_BOX(GHB_WIDGET(ud->builder, name));
    store = GTK_LIST_STORE(gtk_combo_box_get_model (combo));
    gtk_list_store_clear(store);

    gtk_list_store_append(store, &iter);
    gtk_list_store_set(store, &iter,
                       0, _("Same as source"),
                       1, TRUE,
                       2, "auto",
                       3, 0.0,
                       -1);

    const hb_rate_t *rate;
    for (rate = hb_video_framerate_get_next(((void*)0)); rate != ((void*)0);
         rate = hb_video_framerate_get_next(rate))
    {
        gchar *desc = "";
        gchar *option;
        if (strcmp(rate->name, "23.976") == 0)
        {
            desc = _("(NTSC Film)");
        }
        else if (strcmp(rate->name, "25") == 0)
        {
            desc = _("(PAL Film/Video)");
        }
        else if (strcmp(rate->name, "29.97") == 0)
        {
            desc = _("(NTSC Video)");
        }
        option = g_strdup_printf ("%s %s", rate->name, desc);
        gtk_list_store_append(store, &iter);
        gtk_list_store_set(store, &iter,
                           0, option,
                           1, TRUE,
                           2, rate->name,
                           3, (gdouble)rate->rate,
                           -1);
        g_free(option);
    }
}
