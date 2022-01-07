
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int settings; int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int hb_title_t ;
typedef int gint64 ;
typedef int gint ;
typedef int gchar ;
typedef int GtkWidget ;


 int * GHB_WIDGET (int ,char*) ;
 int GTK_LABEL (int *) ;
 int g_free (int *) ;
 int * g_strdup_printf (char*,int ,int ,int ) ;
 int ghb_break_duration (int ,int *,int *,int *) ;
 int ghb_dict_get_int (int ,char*) ;
 int * ghb_lookup_title (int,int*) ;
 int ghb_title_range_get_duration (int ,int const*) ;
 int gtk_label_set_text (int ,int *) ;

__attribute__((used)) static void
update_title_duration(signal_user_data_t *ud)
{
    gint hh, mm, ss;
    gint64 duration;
    gchar *text;
    GtkWidget *widget;
    int title_id, titleindex;
    const hb_title_t *title;

    title_id = ghb_dict_get_int(ud->settings, "title");
    title = ghb_lookup_title(title_id, &titleindex);
    widget = GHB_WIDGET (ud->builder, "title_duration");

    duration = ghb_title_range_get_duration(ud->settings, title);
    ghb_break_duration(duration, &hh, &mm, &ss);

    text = g_strdup_printf("%02d:%02d:%02d", hh, mm, ss);
    gtk_label_set_text(GTK_LABEL(widget), text);
    g_free(text);
}
