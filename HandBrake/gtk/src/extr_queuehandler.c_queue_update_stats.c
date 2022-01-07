
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct tm {int dummy; } ;
struct stat {double st_size; } ;
struct TYPE_3__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int GtkLabel ;
typedef int GhbValue ;


 int FALSE ;





 int GHB_WIDGET (int ,char*) ;
 int * GTK_LABEL (int ) ;
 int GTK_WIDGET (int *) ;
 char const* _ (char*) ;
 int g_free (char*) ;
 scalar_t__ g_stat (char const*,struct stat*) ;
 char* g_strdup_printf (char const*,double,...) ;
 int ghb_break_duration (int,int*,int*,int*) ;
 int * ghb_dict_get (int *,char*) ;
 int ghb_dict_get_int (int *,char*) ;
 char* ghb_dict_get_string (int *,char*) ;
 int gtk_label_set_text (int *,char const*) ;
 int gtk_widget_set_visible (int ,int ) ;
 struct tm* localtime (int*) ;
 int strftime (char*,int,char*,struct tm*) ;

void
queue_update_stats(GhbValue * queueDict, signal_user_data_t *ud)
{
    GhbValue * uiDict;
    GtkLabel * label;

    uiDict = ghb_dict_get(queueDict, "uiSettings");
    if (uiDict == ((void*)0))
    {
        return;
    }

    label = GTK_LABEL(GHB_WIDGET(ud->builder, "queue_stats_pass_label"));
    gtk_widget_set_visible(GTK_WIDGET(label), FALSE);
    label = GTK_LABEL(GHB_WIDGET(ud->builder, "queue_stats_pass"));
    gtk_widget_set_visible(GTK_WIDGET(label), FALSE);

    const char * result = "";
    int status = ghb_dict_get_int(uiDict, "job_status");

    if (status == 129)
    {
        label = GTK_LABEL(GHB_WIDGET(ud->builder, "queue_stats_start_time"));
        gtk_label_set_text(label, "");
        label = GTK_LABEL(GHB_WIDGET(ud->builder, "queue_stats_finish_time"));
        gtk_label_set_text(label, "");
        label = GTK_LABEL(GHB_WIDGET(ud->builder, "queue_stats_paused"));
        gtk_label_set_text(label, "");
        label = GTK_LABEL(GHB_WIDGET(ud->builder, "queue_stats_encode"));
        gtk_label_set_text(label, "");
        label = GTK_LABEL(GHB_WIDGET(ud->builder, "queue_stats_file_size"));
        gtk_label_set_text(label, "");
        label = GTK_LABEL(GHB_WIDGET(ud->builder, "queue_stats_result"));
        gtk_label_set_text(label, "Pending");
        return;
    }

    switch (status)
    {
        case 128:


            return;

        case 131:
            result = _("Completed");
            break;

        case 132:
            result = _("Canceled");
            break;

        case 130:
            result = _("Failed");
            break;

        case 129:
        default:
            result = _("Pending");
            break;
    }

    struct tm * tm;
    char date[40] = "";
    char * str;
    time_t start, finish, paused, duration;

    start = ghb_dict_get_int(uiDict, "job_start_time");
    finish = ghb_dict_get_int(uiDict, "job_finish_time");
    paused = ghb_dict_get_int(uiDict, "job_pause_time_ms") / 1000;

    tm = localtime( &start );
    strftime(date, 40, "%c", tm);
    label = GTK_LABEL(GHB_WIDGET(ud->builder, "queue_stats_start_time"));
    gtk_label_set_text(label, date);

    tm = localtime( &finish );
    strftime(date, 40, "%c", tm);
    label = GTK_LABEL(GHB_WIDGET(ud->builder, "queue_stats_finish_time"));
    gtk_label_set_text(label, date);

    int dd = 0, hh, mm, ss;
    ghb_break_duration(paused, &hh, &mm, &ss);
    if (hh >= 24)
    {
        dd = hh / 24;
        hh = hh - dd * 24;
    }
    switch (dd)
    {
        case 0:
            str = g_strdup_printf("%02d:%02d:%02d", hh, mm, ss);
            break;
        case 1:
            str = g_strdup_printf(_("%d Day %02d:%02d:%02d"), dd, hh, mm, ss);
            break;
        default:
            str = g_strdup_printf(_("%d Days %02d:%02d:%02d"), dd, hh, mm, ss);
            break;
    }
    label = GTK_LABEL(GHB_WIDGET(ud->builder, "queue_stats_paused"));
    gtk_label_set_text(label, str);
    g_free(str);

    duration = finish - start;
    if (duration < 0)
    {
        duration = 0;
    }
    dd = 0;
    ghb_break_duration(duration, &hh, &mm, &ss);
    if (hh >= 24)
    {
        dd = hh / 24;
        hh = hh - dd * 24;
    }
    switch (dd)
    {
        case 0:
            str = g_strdup_printf("%02d:%02d:%02d", hh, mm, ss);
            break;
        case 1:
            str = g_strdup_printf(_("%d Day %02d:%02d:%02d"), dd, hh, mm, ss);
            break;
        default:
            str = g_strdup_printf(_("%d Days %02d:%02d:%02d"), dd, hh, mm, ss);
            break;
    }
    label = GTK_LABEL(GHB_WIDGET(ud->builder, "queue_stats_encode"));
    gtk_label_set_text(label, str);
    g_free(str);

    const char * path;
    struct stat stbuf;

    path = ghb_dict_get_string(uiDict, "destination");
    if (g_stat(path, &stbuf) == 0)
    {
        const char * units = _("B");
        double size = stbuf.st_size;
        if (size > 1024)
        {
            units = _("KB");
            size /= 1024.0;
        }
        if (size > 1024)
        {
            units = _("MB");
            size /= 1024.0;
        }
        if (size > 1024)
        {
            units = _("GB");
            size /= 1024.0;
        }
        str = g_strdup_printf("%.2f %s", size, units);
        label = GTK_LABEL(GHB_WIDGET(ud->builder, "queue_stats_file_size"));
        gtk_label_set_text(label, str);
        g_free(str);
    }
    else
    {
        label = GTK_LABEL(GHB_WIDGET(ud->builder, "queue_stats_file_size"));
        gtk_label_set_text(label, _("Not Available"));
    }

    label = GTK_LABEL(GHB_WIDGET(ud->builder, "queue_stats_result"));
    gtk_label_set_text(label, result);
}
