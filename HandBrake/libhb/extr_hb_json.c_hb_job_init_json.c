
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_job_t ;
typedef int hb_handle_t ;


 int hb_job_close (int **) ;
 int * hb_job_init_by_index (int *,int) ;
 char* hb_job_to_json (int *) ;

char* hb_job_init_json(hb_handle_t *h, int title_index)
{
    hb_job_t *job = hb_job_init_by_index(h, title_index);
    char *json_job = hb_job_to_json(job);
    hb_job_close(&job);
    return json_job;
}
