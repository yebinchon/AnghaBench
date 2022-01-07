
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_handle_t ;
typedef int hb_dict_t ;


 int EventLoop (int *,int *) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int hb_add_json (int *,char*) ;
 int hb_start (int *) ;
 int hb_value_free (int **) ;
 char* hb_value_get_json (int *) ;
 int job_running ;
 int stderr ;

int RunQueueJob(hb_handle_t *h, hb_dict_t *job_dict)
{
    if (job_dict == ((void*)0))
    {
        return -1;
    }

    char * json_job;
    json_job = hb_value_get_json(job_dict);
    hb_value_free(&job_dict);
    if (json_job == ((void*)0))
    {
        fprintf(stderr, "Error in setting up job! Aborting.\n");
        return -1;
    }

    hb_add_json(h, json_job);
    free(json_job);
    job_running = 1;
    hb_start( h );

    EventLoop(h, ((void*)0));

    return 0;
}
