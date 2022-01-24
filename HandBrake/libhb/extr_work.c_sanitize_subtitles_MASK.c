#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_16__ {scalar_t__ force; scalar_t__ dest; scalar_t__ default_track; } ;
struct TYPE_17__ {scalar_t__ id; int out_track; TYPE_2__ config; int /*<<< orphan*/  source; } ;
typedef  TYPE_3__ hb_subtitle_t ;
struct TYPE_18__ {scalar_t__ pass_id; int /*<<< orphan*/  list_subtitle; int /*<<< orphan*/  mux; scalar_t__ indepth_scan; int /*<<< orphan*/  h; } ;
typedef  TYPE_4__ hb_job_t ;
struct TYPE_19__ {TYPE_7__* select_subtitle; } ;
typedef  TYPE_5__ hb_interjob_t ;
typedef  int /*<<< orphan*/  hb_filter_object_t ;
struct TYPE_15__ {scalar_t__ force; } ;
struct TYPE_20__ {scalar_t__ forced_hits; scalar_t__ id; scalar_t__ hits; int out_track; TYPE_1__ config; } ;

/* Variables and functions */
 int /*<<< orphan*/  HB_FILTER_RENDER_SUB ; 
 scalar_t__ HB_PASS_ENCODE ; 
 scalar_t__ HB_PASS_ENCODE_2ND ; 
 scalar_t__ PASSTHRUSUB ; 
 scalar_t__ RENDERSUB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC11 (TYPE_7__*) ; 

__attribute__((used)) static int FUNC12( hb_job_t * job )
{
    int             i;
    uint8_t         one_burned = 0;
    hb_interjob_t * interjob = FUNC3(job->h);
    hb_subtitle_t * subtitle;

    if (job->indepth_scan)
    {
        // Subtitles are set by hb_add() during subtitle scan
        return 0;
    }

    /* Look for the scanned subtitle in the existing subtitle list
     * select_subtitle implies that we did a scan. */
    if (interjob->select_subtitle != NULL)
    {
        /* Disable forced subtitles if we didn't find any in the scan, so that
         * we display normal subtitles instead. */
        if( interjob->select_subtitle->config.force &&
            interjob->select_subtitle->forced_hits == 0 )
        {
            interjob->select_subtitle->config.force = 0;
        }
        for (i = 0; i < FUNC4( job->list_subtitle );)
        {
            subtitle = FUNC6(job->list_subtitle, i);
            /* Remove the scanned subtitle from the list if
             * it would result in:
             * - an empty track (forced and no forced hits)
             * - an identical, duplicate subtitle track:
             *   -> both (or neither) are forced
             *   -> subtitle is not forced but all its hits are forced */
            if( ( interjob->select_subtitle->id == subtitle->id ) &&
                ( ( subtitle->config.force &&
                    interjob->select_subtitle->forced_hits == 0 ) ||
                  ( subtitle->config.force == interjob->select_subtitle->config.force ) ||
                  ( !subtitle->config.force &&
                    interjob->select_subtitle->hits == interjob->select_subtitle->forced_hits ) ) )
            {
                FUNC7( job->list_subtitle, subtitle );
                FUNC0( subtitle );
                continue;
            }
            /* Adjust output track number, in case we removed one.
             * Output tracks sadly still need to be in sequential order.
             * Note: out.track starts at 1, i starts at 0, and track 1 is
             * interjob->select_subtitle */
            subtitle->out_track = ++i + 1;
        }

        /* Add the subtitle that we found on the subtitle scan pass.
         *
         * Make sure it's the first subtitle in the list so that it becomes the
         * first burned subtitle (explicitly or after sanitizing) - which should
         * ensure that it doesn't get dropped. */
        interjob->select_subtitle->out_track = 1;
        if (job->pass_id == HB_PASS_ENCODE ||
            job->pass_id == HB_PASS_ENCODE_2ND)
        {
            // final pass, interjob->select_subtitle is no longer needed
            FUNC5(job->list_subtitle, 0, interjob->select_subtitle);
            interjob->select_subtitle = NULL;
        }
        else
        {
            // this is not the final pass, so we need to copy it instead
            FUNC5(job->list_subtitle, 0, FUNC11(interjob->select_subtitle));
        }
    }

    for (i = 0; i < FUNC4(job->list_subtitle);)
    {
        subtitle = FUNC6(job->list_subtitle, i);
        if (subtitle->config.dest == RENDERSUB)
        {
            if (one_burned)
            {
                if (!FUNC10(subtitle->source, job->mux))
                {
                    FUNC8( "More than one subtitle burn-in requested, dropping track %d.", i );
                    FUNC7(job->list_subtitle, subtitle);
                    FUNC0(subtitle);
                    continue;
                }
                else
                {
                    FUNC8("More than one subtitle burn-in requested.  Changing track %d to soft subtitle.", i);
                    subtitle->config.dest = PASSTHRUSUB;
                }
            }
            else if (!FUNC9(subtitle->source))
            {
                FUNC8("Subtitle burn-in requested and input track can not be rendered.  Changing track %d to soft subtitle.", i);
                subtitle->config.dest = PASSTHRUSUB;
            }
            else
            {
                one_burned = 1;
            }
        }

        if (subtitle->config.dest == PASSTHRUSUB &&
            !FUNC10(subtitle->source, job->mux))
        {
            if (!one_burned)
            {
                FUNC8("Subtitle pass-thru requested and input track is not compatible with container.  Changing track %d to burned-in subtitle.", i);
                subtitle->config.dest = RENDERSUB;
                subtitle->config.default_track = 0;
                one_burned = 1;
            }
            else
            {
                FUNC8("Subtitle pass-thru requested and input track is not compatible with container.  One track already burned, dropping track %d.", i);
                FUNC7(job->list_subtitle, subtitle);
                FUNC0(subtitle);
                continue;
            }
        }
        /* Adjust output track number, in case we removed one.
         * Output tracks sadly still need to be in sequential order.
         * Note: out.track starts at 1, i starts at 0 */
        subtitle->out_track = ++i;
    }
    if (one_burned)
    {
        // Add subtitle rendering filter
        // Note that if the filter is already in the filter chain, this
        // has no effect. Note also that this means the front-end is
        // not required to add the subtitle rendering filter since
        // we will always try to do it here.
        hb_filter_object_t *filter = FUNC2(HB_FILTER_RENDER_SUB);
        FUNC1(job, filter, NULL);
    }

    return 0;
}