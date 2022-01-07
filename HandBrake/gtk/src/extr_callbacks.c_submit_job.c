
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_5__ {int queue; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef char gchar ;
typedef scalar_t__ gboolean ;
typedef int GhbValue ;


 int GHB_QUEUE_RUNNING ;
 int g_debug (char*) ;
 int ghb_add_job (int ,int *) ;
 int * ghb_dict_get (int *,char*) ;
 scalar_t__ ghb_dict_get_bool (int *,char*) ;
 int ghb_dict_get_int (int *,char*) ;
 char* ghb_dict_get_string (int *,char*) ;
 int ghb_dict_set_int (int *,char*,int) ;
 int ghb_find_queue_job (int ,int,int *) ;
 int ghb_log (char*,char*,char*,char const*) ;
 int ghb_queue_handle () ;
 int ghb_queue_progress_set_visible (TYPE_1__*,int,int) ;
 int ghb_start_queue () ;
 int start_new_log (TYPE_1__*,int *) ;
 int time (int *) ;

__attribute__((used)) static void
submit_job(signal_user_data_t *ud, GhbValue *queueDict)
{
    gchar *type, *modified;
    const char *name;
    GhbValue *uiDict;
    gboolean preset_modified;

    g_debug("submit_job");
    if (queueDict == ((void*)0)) return;
    uiDict = ghb_dict_get(queueDict, "uiSettings");
    preset_modified = ghb_dict_get_bool(uiDict, "preset_modified");
    name = ghb_dict_get_string(uiDict, "PresetFullName");
    type = ghb_dict_get_int(uiDict, "Type") == 1 ? "Custom " : "";
    modified = preset_modified ? "Modified " : "";
    ghb_log("%s%sPreset: %s", modified, type, name);

    ghb_dict_set_int(uiDict, "job_status", GHB_QUEUE_RUNNING);
    start_new_log(ud, uiDict);
    GhbValue *job_dict = ghb_dict_get(queueDict, "Job");
    int unique_id = ghb_add_job(ghb_queue_handle(), job_dict);
    ghb_dict_set_int(uiDict, "job_unique_id", unique_id);
    time_t now = time(((void*)0));
    ghb_dict_set_int(uiDict, "job_start_time", now);
    ghb_start_queue();


    int index = ghb_find_queue_job(ud->queue, unique_id, ((void*)0));
    ghb_queue_progress_set_visible(ud, index, 1);
}
