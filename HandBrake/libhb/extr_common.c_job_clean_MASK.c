#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hb_subtitle_t ;
struct TYPE_3__ {void* encoder_preset; void* encoder_tune; void* encoder_options; void* encoder_profile; void* encoder_level; void* file; int /*<<< orphan*/  metadata; int /*<<< orphan*/  list_attachment; int /*<<< orphan*/  list_filter; int /*<<< orphan*/  list_subtitle; int /*<<< orphan*/  list_audio; int /*<<< orphan*/  list_chapter; int /*<<< orphan*/ * json; } ;
typedef  TYPE_1__ hb_job_t ;
typedef  int /*<<< orphan*/  hb_filter_object_t ;
typedef  int /*<<< orphan*/  hb_chapter_t ;
typedef  int /*<<< orphan*/  hb_audio_t ;
typedef  int /*<<< orphan*/  hb_attachment_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC10( hb_job_t * job )
{
    if (job)
    {
        hb_chapter_t *chapter;
        hb_audio_t *audio;
        hb_subtitle_t *subtitle;
        hb_filter_object_t *filter;
        hb_attachment_t *attachment;

        FUNC0((void*)job->json);
        job->json = NULL;
        FUNC0(job->encoder_preset);
        job->encoder_preset = NULL;
        FUNC0(job->encoder_tune);
        job->encoder_tune = NULL;
        FUNC0(job->encoder_options);
        job->encoder_options = NULL;
        FUNC0(job->encoder_profile);
        job->encoder_profile = NULL;
        FUNC0(job->encoder_level);
        job->encoder_level = NULL;
        FUNC0(job->file);
        job->file = NULL;

        // clean up chapter list
        while( ( chapter = FUNC6( job->list_chapter, 0 ) ) )
        {
            FUNC7( job->list_chapter, chapter );
            FUNC3( &chapter );
        }
        FUNC5( &job->list_chapter );

        // clean up audio list
        while( ( audio = FUNC6( job->list_audio, 0 ) ) )
        {
            FUNC7( job->list_audio, audio );
            FUNC2( &audio );
        }
        FUNC5( &job->list_audio );

        // clean up subtitle list
        while( ( subtitle = FUNC6( job->list_subtitle, 0 ) ) )
        {
            FUNC7( job->list_subtitle, subtitle );
            FUNC9( &subtitle );
        }
        FUNC5( &job->list_subtitle );

        // clean up filter list
        while( ( filter = FUNC6( job->list_filter, 0 ) ) )
        {
            FUNC7( job->list_filter, filter );
            FUNC4( &filter );
        }
        FUNC5( &job->list_filter );

        // clean up attachment list
        while( ( attachment = FUNC6( job->list_attachment, 0 ) ) )
        {
            FUNC7( job->list_attachment, attachment );
            FUNC1( &attachment );
        }
        FUNC5( &job->list_attachment );

        // clean up metadata
        FUNC8( &job->metadata );
    }
}