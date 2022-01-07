
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int queue; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int GhbValue ;


 int FALSE ;
 int GHB_QUEUE_PENDING ;
 scalar_t__ GHB_QUEUE_RUNNING ;
 int * ghb_array_get (int ,int) ;
 int ghb_array_len (int ) ;
 int * ghb_dict_get (int *,char*) ;
 scalar_t__ ghb_dict_get_int (int *,char*) ;
 int ghb_dict_set_int (int *,char*,int) ;
 int ghb_queue_progress_set_visible (TYPE_1__*,int,int ) ;
 int ghb_queue_update_status_icon (TYPE_1__*,int) ;

void
ghb_queue_update_status(signal_user_data_t *ud, int index, int status)
{
    int count = ghb_array_len(ud->queue);
    if (index < 0 || index >= count)
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

    if (ghb_dict_get_int(uiDict, "job_status") == GHB_QUEUE_RUNNING)
    {
        return;
    }

    if (status == GHB_QUEUE_PENDING)
    {
        ghb_queue_progress_set_visible(ud, index, FALSE);
    }
    ghb_dict_set_int(uiDict, "job_status", status);
    ghb_queue_update_status_icon(ud, index);
}
