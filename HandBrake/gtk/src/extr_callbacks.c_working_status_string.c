
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int queue; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gint ;
struct TYPE_6__ {int pass_count; scalar_t__ pass_id; int seconds; double rate_cur; double progress; int minutes; int hours; int rate_avg; int pass; int unique_id; } ;
typedef TYPE_2__ ghb_instance_status_t ;
typedef int gchar ;


 scalar_t__ HB_PASS_SUBTITLE ;
 int _ (char*) ;
 int g_free (int *) ;
 int * g_strdup (char*) ;
 int * g_strdup_printf (int ,int,int,...) ;
 int ghb_array_len (int ) ;
 int ghb_find_queue_job (int ,int ,int *) ;

__attribute__((used)) static gchar*
working_status_string(signal_user_data_t *ud, ghb_instance_status_t *status)
{
    gchar *task_str, *job_str, *status_str;
    gint qcount;
    gint index;

    qcount = ghb_array_len(ud->queue);
    index = ghb_find_queue_job(ud->queue, status->unique_id, ((void*)0));
    if (qcount > 1)
    {
        job_str = g_strdup_printf(_("job %d of %d, "), index+1, qcount);
    }
    else
    {
        job_str = g_strdup("");
    }
    if (status->pass_count > 1)
    {
        if (status->pass_id == HB_PASS_SUBTITLE)
        {
            task_str = g_strdup_printf(_("pass %d (subtitle scan) of %d, "),
                status->pass, status->pass_count);
        }
        else
        {
            task_str = g_strdup_printf(_("pass %d of %d, "),
                status->pass, status->pass_count);
        }
    }
    else
    {
        task_str = g_strdup("");
    }
    if(status->seconds > -1)
    {
        if (status->rate_cur > 0.0)
        {
            status_str= g_strdup_printf(
                _("Encoding: %s%s%.2f %%"
                " (%.2f fps, avg %.2f fps, ETA %02dh%02dm%02ds)"),
                job_str, task_str,
                100.0 * status->progress,
                status->rate_cur, status->rate_avg, status->hours,
                status->minutes, status->seconds );
        }
        else
        {
            status_str= g_strdup_printf(
                _("Encoding: %s%s%.2f %%"
                " (ETA %02dh%02dm%02ds)"),
                job_str, task_str,
                100.0 * status->progress,
                status->hours, status->minutes, status->seconds );
        }
    }
    else
    {
        status_str= g_strdup_printf(
            _("Encoding: %s%s%.2f %%"),
            job_str, task_str,
            100.0 * status->progress );
    }
    g_free(task_str);
    g_free(job_str);
    return status_str;
}
