
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int builder; int settings; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef scalar_t__ gint ;
typedef int GtkWidget ;


 int * GHB_WIDGET (int ,char*) ;
 scalar_t__ ghb_dict_get_int (int ,char*) ;
 scalar_t__ ghb_settings_combo_int (int ,char*) ;
 int gtk_widget_set_sensitive (int *,int) ;

__attribute__((used)) static void
check_chapter_markers(signal_user_data_t *ud)
{
    GtkWidget *widget;
    gint start, end;

    if (ghb_settings_combo_int(ud->settings, "PtoPType") == 0)
    {
        start = ghb_dict_get_int(ud->settings, "start_point");
        end = ghb_dict_get_int(ud->settings, "end_point");
        widget = GHB_WIDGET (ud->builder, "ChapterMarkers");
        gtk_widget_set_sensitive(widget, end > start);
    }
}
