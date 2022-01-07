
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int time_t ;
struct tm {int dummy; } ;
struct stat {double st_size; } ;
struct TYPE_9__ {int builder; int queue; } ;
typedef TYPE_1__ signal_user_data_t ;
struct TYPE_10__ {int state; int eta_seconds; int paused; int pass_count; int pass_id; int error; int pass; } ;
typedef TYPE_2__ ghb_instance_status_t ;
struct TYPE_11__ {char const* str; } ;
typedef int GtkListBoxRow ;
typedef int GtkListBox ;
typedef int GtkLabel ;
typedef int GhbValue ;
typedef TYPE_3__ GString ;


 int FALSE ;



 int GHB_STATE_SCANNING ;
 int GHB_STATE_WORKDONE ;
 int GHB_STATE_WORKING ;
 int GHB_WIDGET (int ,char*) ;
 int * GTK_LABEL (int ) ;
 int * GTK_LIST_BOX (int ) ;
 int GTK_WIDGET (int *) ;




 int TRUE ;
 char const* _ (char*) ;
 int g_free (char*) ;
 scalar_t__ g_stat (char const*,struct stat*) ;
 char* g_strdup_printf (char const*,double,...) ;
 int g_string_append_printf (TYPE_3__*,char const*,int ,int,char const*) ;
 int g_string_free (TYPE_3__*,int ) ;
 TYPE_3__* g_string_new (int *) ;
 int * ghb_array_get (int ,int) ;
 int ghb_array_len (int ) ;
 int ghb_break_duration (int,int*,int*,int*) ;
 int * ghb_dict_get (int *,char*) ;
 int ghb_dict_get_int (int *,char*) ;
 char* ghb_dict_get_string (int *,char*) ;
 int gtk_label_set_text (int *,char const*) ;
 int * gtk_list_box_get_selected_row (int *) ;
 int gtk_list_box_row_get_index (int *) ;
 int gtk_widget_set_visible (int ,int ) ;
 struct tm* localtime (int*) ;
 int strftime (char*,int,char*,struct tm*) ;
 int time (int *) ;

void
ghb_queue_update_live_stats(signal_user_data_t * ud, int index, ghb_instance_status_t * status)
{
    int count = ghb_array_len(ud->queue);
    if (index < 0 || index >= count)
    {

        return;
    }

    GtkListBox * lb;
    GtkListBoxRow * row;

    lb = GTK_LIST_BOX(GHB_WIDGET(ud->builder, "queue_list"));
    row = gtk_list_box_get_selected_row(lb);
    if (row == ((void*)0) || index != gtk_list_box_row_get_index(row))
    {
        return;
    }

    GhbValue * queueDict, * uiDict;
    queueDict = ghb_array_get(ud->queue, index);
    if (queueDict == ((void*)0))
    {
        return;
    }
    uiDict = ghb_dict_get(queueDict, "uiSettings");
    if (uiDict == ((void*)0))
    {
        return;
    }

    GString * gstr = ((void*)0);
    GtkLabel * label;
    struct tm * tm;
    char date[40] = "";
    char * str;
    const char * pass = "";
    const char * result = "";
    time_t start, finish, paused, duration;

    start = ghb_dict_get_int(uiDict, "job_start_time");
    finish = time(((void*)0));
    if (status->state & GHB_STATE_WORKING)
    {
        finish += status->eta_seconds;
    }
    paused = status->paused / 1000;
    if ((status->state & GHB_STATE_WORKING) && status->pass_count > 1)
    {
        label = GTK_LABEL(GHB_WIDGET(ud->builder, "queue_stats_pass_label"));
        gtk_widget_set_visible(GTK_WIDGET(label), TRUE);
        label = GTK_LABEL(GHB_WIDGET(ud->builder, "queue_stats_pass"));
        gtk_widget_set_visible(GTK_WIDGET(label), TRUE);
        switch (status->pass_id)
        {
            case 128:
                pass = _("Foreign Audio Search");
                break;

            case 131:
                pass = _("Encode");
                break;

            case 130:
                pass = _("Encode First Pass (Analysis)");
                break;

            case 129:
                pass = _("Encode Second Pass (Final)");
                break;

            default:

                pass = _("Error");
                break;
        }
        gstr = g_string_new(((void*)0));
        g_string_append_printf(gstr, _("pass %d of %d\n%s"), status->pass, status->pass_count, pass);
    }
    else
    {
        label = GTK_LABEL(GHB_WIDGET(ud->builder, "queue_stats_pass_label"));
        gtk_widget_set_visible(GTK_WIDGET(label), FALSE);
        label = GTK_LABEL(GHB_WIDGET(ud->builder, "queue_stats_pass"));
        gtk_widget_set_visible(GTK_WIDGET(label), FALSE);
    }

    if (status->state & GHB_STATE_SCANNING)
    {
        result = _("Scanning Title");
    }
    else if (status->state & GHB_STATE_SCANNING)
    {
        result = _("Encoding Paused");
    }
    else if (status->state & GHB_STATE_WORKING)
    {
        result = _("Encoding In Progress");
    }
    else if (status->state & GHB_STATE_WORKDONE)
    {
        switch (status->error)
        {
            case 132:
                result = _("Completed");
                break;

            case 134:
                result = _("Canceled");
                break;

            case 133:
                result = _("Failed");
                break;

            default:

                result = _("Unknown");
                break;
        }
    }

    if (gstr != ((void*)0))
    {
        label = GTK_LABEL(GHB_WIDGET(ud->builder, "queue_stats_pass"));
        gtk_label_set_text(label, gstr->str);
        g_string_free(gstr, TRUE);
    }

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
