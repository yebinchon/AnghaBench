
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_handle_t ;
typedef int hb_dict_t ;


 int * hb_preset_job_init (int *,int,int *) ;
 int hb_value_free (int **) ;
 char* hb_value_get_json (int *) ;
 int * hb_value_json (char const*) ;

char* hb_preset_job_init_json(hb_handle_t *h, int title_index,
                              const char *json_preset)
{
    hb_dict_t * preset = hb_value_json(json_preset);
    hb_dict_t * job = hb_preset_job_init(h, title_index, preset);
    char * json_job = hb_value_get_json(job);

    hb_value_free(&preset);
    hb_value_free(&job);

    return json_job;
}
