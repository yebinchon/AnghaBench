
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int settings; int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
struct TYPE_7__ {int list_subtitle; } ;
typedef TYPE_2__ hb_title_t ;
typedef int GtkWidget ;
typedef int GhbValue ;


 int * GHB_WIDGET (int ,char*) ;
 int TRUE ;
 int clear_subtitle_list_settings (int ) ;
 int clear_subtitle_list_ui (int ) ;
 int ghb_dict_get_int (int ,char*) ;
 int ghb_dict_remove (int *,char*) ;
 int * ghb_get_job_settings (int ) ;
 TYPE_2__* ghb_lookup_title (int,int *) ;
 int ghb_scan_handle () ;
 int gtk_widget_set_sensitive (int *,int ) ;
 int hb_list_count (int ) ;
 int hb_preset_job_add_subtitles (int ,int,int ,int *) ;
 int subtitle_refresh_list_ui (TYPE_1__*) ;

void
ghb_set_pref_subtitle(signal_user_data_t *ud)
{
    int sub_count, title_id;
    GtkWidget *widget;
    const hb_title_t *title;

    title_id = ghb_dict_get_int(ud->settings, "title");
    title = ghb_lookup_title(title_id, ((void*)0));

    clear_subtitle_list_ui(ud->builder);
    if (title == ((void*)0))
    {

        clear_subtitle_list_settings(ud->settings);
        return;
    }
    sub_count = hb_list_count(title->list_subtitle);
    if (sub_count == 0)
    {

        widget = GHB_WIDGET(ud->builder, "SubtitleSrtEnable");
        gtk_widget_set_sensitive(widget, TRUE);
    }
    else
    {
        widget = GHB_WIDGET(ud->builder, "SubtitleImportDisable");
        gtk_widget_set_sensitive(widget, TRUE);
    }
    GhbValue *job = ghb_get_job_settings(ud->settings);
    ghb_dict_remove(job, "Subtitle");
    hb_preset_job_add_subtitles(ghb_scan_handle(), title_id, ud->settings, job);
    subtitle_refresh_list_ui(ud);
}
