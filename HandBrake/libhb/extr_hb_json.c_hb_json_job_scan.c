
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int text; } ;
typedef TYPE_1__ json_error_t ;
struct TYPE_6__ {scalar_t__ state; } ;
typedef TYPE_2__ hb_state_t ;
typedef int hb_handle_t ;
typedef int hb_dict_t ;


 scalar_t__ HB_STATE_SCANNING ;
 int hb_error (char*,int ) ;
 int hb_get_state2 (int *,TYPE_2__*) ;
 int hb_scan (int *,char const*,int,int,int ,int ) ;
 int hb_snooze (int) ;
 int hb_value_free (int **) ;
 int * hb_value_json (char const*) ;
 int json_unpack_ex (int *,TYPE_1__*,int ,char*,char*,char*,int ,char*,int ) ;
 int unpack_i (int*) ;
 int unpack_s (char const**) ;

void hb_json_job_scan( hb_handle_t * h, const char * json_job )
{
    hb_dict_t * dict;
    int result;
    json_error_t error;

    dict = hb_value_json(json_job);

    int title_index;
    const char *path = ((void*)0);

    result = json_unpack_ex(dict, &error, 0, "{s:{s:s, s:i}}",
                            "Source",
                                "Path", unpack_s(&path),
                                "Title", unpack_i(&title_index)
                           );
    if (result < 0)
    {
        hb_error("json unpack failure, failed to find title: %s", error.text);
        hb_value_free(&dict);
        return;
    }



    hb_scan(h, path, title_index, -1, 0, 0);


    hb_state_t state;
    hb_get_state2(h, &state);
    while (state.state == HB_STATE_SCANNING)
    {
        hb_snooze(50);
        hb_get_state2(h, &state);
    }
    hb_value_free(&dict);
}
