#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  list_filter; int /*<<< orphan*/ * file; int /*<<< orphan*/ * encoder_level; int /*<<< orphan*/ * encoder_profile; int /*<<< orphan*/ * encoder_options; int /*<<< orphan*/ * encoder_tune; int /*<<< orphan*/ * encoder_preset; int /*<<< orphan*/  metadata; int /*<<< orphan*/  list_attachment; int /*<<< orphan*/  list_audio; int /*<<< orphan*/  list_chapter; int /*<<< orphan*/  list_subtitle; int /*<<< orphan*/ * json; } ;
typedef  TYPE_1__ hb_job_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*,int) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 

hb_job_t* FUNC9(hb_job_t * job)
{
    hb_job_t      * job_copy;

    /* Copy the job */
    job_copy        = FUNC0( sizeof( hb_job_t ), 1 );
    if (job_copy == NULL)
        return NULL;

    if (job->json != NULL)
    {
        // JSON jobs should only have the json string set.
        job_copy->json = FUNC8(job->json);
        return job_copy;
    }
    FUNC7( job_copy, job, sizeof( hb_job_t ) );

    job_copy->list_subtitle = FUNC6( job->list_subtitle );
    job_copy->list_chapter = FUNC3( job->list_chapter );
    job_copy->list_audio = FUNC2( job->list_audio );
    job_copy->list_attachment = FUNC1( job->list_attachment );
    job_copy->metadata = FUNC5( job->metadata );

    if (job->encoder_preset != NULL)
        job_copy->encoder_preset = FUNC8(job->encoder_preset);
    if (job->encoder_tune != NULL)
        job_copy->encoder_tune = FUNC8(job->encoder_tune);
    if (job->encoder_options != NULL)
        job_copy->encoder_options = FUNC8(job->encoder_options);
    if (job->encoder_profile != NULL)
        job_copy->encoder_profile = FUNC8(job->encoder_profile);
    if (job->encoder_level != NULL)
        job_copy->encoder_level = FUNC8(job->encoder_level);
    if (job->file != NULL)
        job_copy->file = FUNC8(job->file);

    job_copy->list_filter = FUNC4( job->list_filter );

    return job_copy;
}