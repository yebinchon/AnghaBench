
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * queue; int * prefs; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gint ;
typedef int gboolean ;
typedef int GhbValue ;


 int FALSE ;
 int GHB_QUEUE_PENDING ;
 int TRUE ;
 int add_to_queue_list (TYPE_1__*,int *) ;
 int ghb_array_append (int *,int *) ;
 int * ghb_array_new () ;
 int * ghb_dict_new () ;
 int ghb_dict_remove (int *,char*) ;
 int ghb_dict_set (int *,char*,int *) ;
 int ghb_dict_set_int (int *,char*,int ) ;
 int ghb_finalize_job (int *) ;
 int * ghb_get_job_settings (int *) ;
 int * ghb_get_title_settings (int *) ;
 int ghb_queue_buttons_grey (TYPE_1__*) ;
 int ghb_save_queue (int *) ;
 int ghb_update_pending (TYPE_1__*) ;
 int * ghb_value_dup (int *) ;
 int validate_settings (TYPE_1__*,int *,int ) ;

__attribute__((used)) static gboolean
queue_add(signal_user_data_t *ud, GhbValue *settings, gint batch)
{

    if (!validate_settings(ud, settings, batch))
    {
        return FALSE;
    }

    if (ud->queue == ((void*)0))
        ud->queue = ghb_array_new();

    ghb_finalize_job(settings);

    GhbValue *titleDict = ghb_get_title_settings(settings);
    GhbValue *jobDict = ghb_get_job_settings(settings);
    GhbValue *uiDict = ghb_value_dup(settings);

    ghb_dict_remove(uiDict, "Job");
    ghb_dict_remove(uiDict, "Title");

    GhbValue *queueDict = ghb_dict_new();
    ghb_dict_set(queueDict, "uiSettings", uiDict);
    ghb_dict_set(queueDict, "Job", ghb_value_dup(jobDict));
    ghb_dict_set(queueDict, "Title", ghb_value_dup(titleDict));




    ghb_dict_set(uiDict, "Preferences", ghb_value_dup(ud->prefs));


    ghb_dict_set_int(uiDict, "job_status", GHB_QUEUE_PENDING);
    ghb_dict_set_int(uiDict, "job_unique_id", 0);

    ghb_array_append(ud->queue, queueDict);
    add_to_queue_list(ud, queueDict);
    ghb_save_queue(ud->queue);
    ghb_update_pending(ud);
    ghb_queue_buttons_grey(ud);

    return TRUE;
}
