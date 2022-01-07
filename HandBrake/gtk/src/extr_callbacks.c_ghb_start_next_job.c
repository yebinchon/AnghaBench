
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int globals; int queue; int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef scalar_t__ gint ;
typedef int GtkWidget ;
typedef int GhbValue ;


 int FALSE ;
 scalar_t__ GHB_QUEUE_PENDING ;
 int * GHB_WIDGET (int ,char*) ;
 int g_debug (char*) ;
 int * ghb_array_get (int ,scalar_t__) ;
 scalar_t__ ghb_array_len (int ) ;
 int * ghb_dict_get (int *,char*) ;
 scalar_t__ ghb_dict_get_int (int *,char*) ;
 int ghb_dict_set_bool (int ,char*,int ) ;
 int ghb_inhibit_suspend (TYPE_1__*) ;
 int ghb_notify_done (TYPE_1__*) ;
 int ghb_uninhibit_suspend (TYPE_1__*) ;
 int ghb_update_pending (TYPE_1__*) ;
 int gtk_widget_hide (int *) ;
 int gtk_widget_show (int *) ;
 int submit_job (TYPE_1__*,int *) ;

void
ghb_start_next_job(signal_user_data_t *ud)
{
    gint count, ii;
    GhbValue *queueDict, *uiDict;
    gint status;
    GtkWidget *progress;

    g_debug("start_next_job");
    progress = GHB_WIDGET(ud->builder, "progressbar");
    gtk_widget_show(progress);

    count = ghb_array_len(ud->queue);
    for (ii = 0; ii < count; ii++)
    {

        queueDict = ghb_array_get(ud->queue, ii);
        uiDict = ghb_dict_get(queueDict, "uiSettings");
        status = ghb_dict_get_int(uiDict, "job_status");
        if (status == GHB_QUEUE_PENDING)
        {
            ghb_inhibit_suspend(ud);
            submit_job(ud, queueDict);
            ghb_update_pending(ud);
            return;
        }
    }

    ghb_uninhibit_suspend(ud);
    ghb_notify_done(ud);
    ghb_update_pending(ud);
    gtk_widget_hide(progress);
    ghb_dict_set_bool(ud->globals, "SkipDiskFreeCheck", FALSE);
}
