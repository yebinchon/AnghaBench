
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_job_t ;
typedef int hb_handle_t ;
typedef int hb_dict_t ;


 int * hb_dict_to_job (int *,int *) ;
 int hb_value_free (int **) ;
 int * hb_value_json (char const*) ;

hb_job_t* hb_json_to_job( hb_handle_t * h, const char * json_job )
{
    hb_dict_t *dict = hb_value_json(json_job);
    hb_job_t *job = hb_dict_to_job(h, dict);
    hb_value_free(&dict);
    return job;
}
