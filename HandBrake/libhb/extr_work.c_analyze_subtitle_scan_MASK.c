#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ force; } ;
struct TYPE_10__ {int id; int hits; int forced_hits; TYPE_1__ config; int /*<<< orphan*/  lang; int /*<<< orphan*/  track; } ;
typedef  TYPE_2__ hb_subtitle_t ;
struct TYPE_11__ {int /*<<< orphan*/  list_subtitle; TYPE_1__ select_subtitle_config; int /*<<< orphan*/  h; } ;
typedef  TYPE_3__ hb_job_t ;
struct TYPE_12__ {TYPE_2__* select_subtitle; } ;
typedef  TYPE_4__ hb_interjob_t ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void FUNC5( hb_job_t * job )
{
    hb_subtitle_t *subtitle;
    int subtitle_highest     = 0;
    int subtitle_lowest      = 0;
    int subtitle_lowest_id   = 0;
    int subtitle_forced_id   = 0;
    int subtitle_forced_hits = 0;
    int subtitle_hit         = 0;
    int i;

    // Before closing the title print out our subtitle stats if we need to
    // find the highest and lowest.
    for (i = 0; i < FUNC1(job->list_subtitle); i++)
    {
        subtitle = FUNC2(job->list_subtitle, i);

        FUNC4("Subtitle track %d (id 0x%x) '%s': %d hits (%d forced)",
               subtitle->track, subtitle->id, subtitle->lang,
               subtitle->hits, subtitle->forced_hits);

        if (subtitle->hits == 0)
            continue;

        if (subtitle_highest < subtitle->hits)
        {
            subtitle_highest = subtitle->hits;
        }

        if (subtitle_lowest == 0 ||
            subtitle_lowest > subtitle->hits)
        {
            subtitle_lowest = subtitle->hits;
            subtitle_lowest_id = subtitle->id;
        }

        // pick the track with fewest forced hits
        if (subtitle->forced_hits > 0 &&
            (subtitle_forced_hits == 0 ||
             subtitle_forced_hits > subtitle->forced_hits))
        {
            subtitle_forced_id = subtitle->id;
            subtitle_forced_hits = subtitle->forced_hits;
        }
    }

    if (subtitle_forced_id && job->select_subtitle_config.force)
    {
        // If there is a subtitle stream with forced subtitles and forced-only
        // is set, then select it in preference to the lowest.
        subtitle_hit = subtitle_forced_id;
        FUNC4("Found a subtitle candidate with id 0x%x (contains forced subs)",
               subtitle_hit );
    }
    else if (subtitle_lowest > 0 && subtitle_lowest < subtitle_highest * 0.1)
    {
        // OK we have more than one, and the lowest is lower,
        // but how much lower to qualify for turning it on by
        // default?
        //
        // Let's say 10% as a default.
        subtitle_hit = subtitle_lowest_id;
        FUNC4( "Found a subtitle candidate with id 0x%x", subtitle_hit );
    }
    else
    {
        FUNC4( "No candidate detected during subtitle scan" );
    }

    for (i = 0; i < FUNC1( job->list_subtitle ); i++)
    {
        subtitle = FUNC2( job->list_subtitle, i );
        if (subtitle->id == subtitle_hit)
        {
            hb_interjob_t *interjob = FUNC0(job->h);

            subtitle->config = job->select_subtitle_config;
            // Remove from list since we are taking ownership
            // of the subtitle.
            FUNC3(job->list_subtitle, subtitle);
            interjob->select_subtitle = subtitle;
            break;
        }
    }
}