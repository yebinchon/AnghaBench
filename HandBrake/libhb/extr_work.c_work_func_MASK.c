#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_12__ {int* die; TYPE_2__** current_job; int /*<<< orphan*/ * error; int /*<<< orphan*/ * jobs; } ;
typedef  TYPE_1__ hb_work_t ;
typedef  int /*<<< orphan*/  hb_list_t ;
struct TYPE_13__ {int* die; int /*<<< orphan*/ * done_error; int /*<<< orphan*/ * h; int /*<<< orphan*/  sequence_id; int /*<<< orphan*/ * json; } ;
typedef  TYPE_2__ hb_job_t ;
typedef  int /*<<< orphan*/  hb_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  HB_ERROR_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19( void * _work )
{
    hb_work_t  * work = _work;
    hb_job_t   * job;

    time_t t = FUNC18(NULL);
    FUNC16("Starting work at: %s", FUNC2(FUNC17(&t)));
    FUNC16( "%d job(s) to process", FUNC12( work->jobs ) );

    while( !*work->die && ( job = FUNC14( work->jobs, 0 ) ) )
    {
        hb_handle_t * h = job->h;

        FUNC15( work->jobs, job );
        hb_list_t * passes = FUNC13();

        // JSON jobs get special treatment.  We want to perform the title
        // scan for the JSON job automatically.  This requires that we delay
        // filling the job struct till we have performed the title scan
        // because the default values for the job come from the title.
        if (job->json != NULL)
        {
            FUNC5(1, "json job:\n%s", job->json);

            // Initialize state sequence_id
            FUNC0(job, 0, 0);
            // Perform title scan for json job
            FUNC9(job->h, job->json);

            // Expand json string to full job struct
            hb_job_t *new_job = FUNC10(job->h, job->json);
            if (new_job == NULL)
            {
                FUNC7(&job);
                FUNC11(&passes);
                *work->error = HB_ERROR_INIT;
                *work->die = 1;
                break;
            }
            new_job->h = job->h;
            new_job->sequence_id = job->sequence_id;
            FUNC7(&job);
            job = new_job;
        }
        FUNC8(job->h, job, passes);
        FUNC7(&job);

        int pass_count, pass;
        pass_count = FUNC12(passes);
        for (pass = 0; pass < pass_count && !*work->die; pass++)
        {
            job = FUNC14(passes, pass);
            job->die = work->die;
            job->done_error = work->error;
            *(work->current_job) = job;
            FUNC0(job, pass + 1, pass_count);
            FUNC3( job );
        }
        FUNC1(job);
        *(work->current_job) = NULL;

        // Clean job passes
        for (pass = 0; pass < pass_count; pass++)
        {
            job = FUNC14(passes, pass);
            FUNC7(&job);
        }
        FUNC11(&passes);

        // Force rescan of next source processed by this hb_handle_t
        // TODO: Fix this ugly hack!
        FUNC6(h);
    }

    t = FUNC18(NULL);
    FUNC16("Finished work at: %s", FUNC2(FUNC17(&t)));
    FUNC4( work );
}