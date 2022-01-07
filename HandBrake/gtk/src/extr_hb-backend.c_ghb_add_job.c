
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_handle_t ;
typedef int GhbValue ;


 int free (char*) ;
 int hb_add_json (int *,char*) ;
 char* hb_value_get_json (int *) ;

int
ghb_add_job(hb_handle_t *h, GhbValue *job_dict)
{
    char * json_job;
    int sequence_id;

    json_job = hb_value_get_json(job_dict);
    sequence_id = hb_add_json(h, json_job);
    free(json_job);

    return sequence_id;
}
