
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_12__ {int* die; TYPE_2__** current_job; int * error; int * jobs; } ;
typedef TYPE_1__ hb_work_t ;
typedef int hb_list_t ;
struct TYPE_13__ {int* die; int * done_error; int * h; int sequence_id; int * json; } ;
typedef TYPE_2__ hb_job_t ;
typedef int hb_handle_t ;


 int HB_ERROR_INIT ;
 int InitWorkState (TYPE_2__*,int,int) ;
 int SetWorkStateInfo (TYPE_2__*) ;
 int asctime (int ) ;
 int do_job (TYPE_2__*) ;
 int free (TYPE_1__*) ;
 int hb_deep_log (int,char*,int *) ;
 int hb_force_rescan (int *) ;
 int hb_job_close (TYPE_2__**) ;
 int hb_job_setup_passes (int *,TYPE_2__*,int *) ;
 int hb_json_job_scan (int *,int *) ;
 TYPE_2__* hb_json_to_job (int *,int *) ;
 int hb_list_close (int **) ;
 int hb_list_count (int *) ;
 int * hb_list_init () ;
 TYPE_2__* hb_list_item (int *,int) ;
 int hb_list_rem (int *,TYPE_2__*) ;
 int hb_log (char*,int) ;
 int localtime (int *) ;
 int time (int *) ;

__attribute__((used)) static void work_func( void * _work )
{
    hb_work_t * work = _work;
    hb_job_t * job;

    time_t t = time(((void*)0));
    hb_log("Starting work at: %s", asctime(localtime(&t)));
    hb_log( "%d job(s) to process", hb_list_count( work->jobs ) );

    while( !*work->die && ( job = hb_list_item( work->jobs, 0 ) ) )
    {
        hb_handle_t * h = job->h;

        hb_list_rem( work->jobs, job );
        hb_list_t * passes = hb_list_init();





        if (job->json != ((void*)0))
        {
            hb_deep_log(1, "json job:\n%s", job->json);


            InitWorkState(job, 0, 0);

            hb_json_job_scan(job->h, job->json);


            hb_job_t *new_job = hb_json_to_job(job->h, job->json);
            if (new_job == ((void*)0))
            {
                hb_job_close(&job);
                hb_list_close(&passes);
                *work->error = HB_ERROR_INIT;
                *work->die = 1;
                break;
            }
            new_job->h = job->h;
            new_job->sequence_id = job->sequence_id;
            hb_job_close(&job);
            job = new_job;
        }
        hb_job_setup_passes(job->h, job, passes);
        hb_job_close(&job);

        int pass_count, pass;
        pass_count = hb_list_count(passes);
        for (pass = 0; pass < pass_count && !*work->die; pass++)
        {
            job = hb_list_item(passes, pass);
            job->die = work->die;
            job->done_error = work->error;
            *(work->current_job) = job;
            InitWorkState(job, pass + 1, pass_count);
            do_job( job );
        }
        SetWorkStateInfo(job);
        *(work->current_job) = ((void*)0);


        for (pass = 0; pass < pass_count; pass++)
        {
            job = hb_list_item(passes, pass);
            hb_job_close(&job);
        }
        hb_list_close(&passes);



        hb_force_rescan(h);
    }

    t = time(((void*)0));
    hb_log("Finished work at: %s", asctime(localtime(&t)));
    free( work );
}
