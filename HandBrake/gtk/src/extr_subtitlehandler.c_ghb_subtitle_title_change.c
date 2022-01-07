
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int builder; int settings; } ;
typedef TYPE_1__ signal_user_data_t ;
struct TYPE_6__ {int list_subtitle; } ;
typedef TYPE_2__ hb_title_t ;
typedef int gboolean ;
typedef int GtkWidget ;


 int * GHB_WIDGET (int ,char*) ;
 int ghb_dict_get_int (int ,char*) ;
 TYPE_2__* ghb_lookup_title (int,int *) ;
 int gtk_widget_set_sensitive (int *,int) ;
 int hb_list_count (int ) ;

void
ghb_subtitle_title_change(signal_user_data_t *ud, gboolean show)
{
    GtkWidget *w = GHB_WIDGET(ud->builder, "subtitle_add");
    gtk_widget_set_sensitive(w, show);
    w = GHB_WIDGET(ud->builder, "subtitle_add_all");
    gtk_widget_set_sensitive(w, show);
    w = GHB_WIDGET(ud->builder, "subtitle_reset");
    gtk_widget_set_sensitive(w, show);

    int title_id;
    title_id = ghb_dict_get_int(ud->settings, "title");
    const hb_title_t *title = ghb_lookup_title(title_id, ((void*)0));
    if (title != ((void*)0))
    {
        w = GHB_WIDGET(ud->builder, "SubtitleImportDisable");
        gtk_widget_set_sensitive(w, !!hb_list_count(title->list_subtitle));
    }
}
