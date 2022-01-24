#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_7__ {scalar_t__ start_dts; scalar_t__ frag_start; scalar_t__ end_pts; int nb_frag_info; unsigned int track_id; unsigned int timescale; TYPE_2__* frag_info; scalar_t__ entry; TYPE_1__* cluster; } ;
struct TYPE_6__ {scalar_t__ time; scalar_t__ offset; int size; scalar_t__ duration; } ;
struct TYPE_5__ {scalar_t__ cts; scalar_t__ dts; unsigned int flags; } ;
typedef  TYPE_3__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 unsigned int MOV_SYNC_SAMPLE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC10(AVIOContext *pb,
                              MOVTrack *track, int ref_size, int total_sidx_size)
{
    int64_t pos = FUNC2(pb), offset_pos, end_pos;
    int64_t presentation_time, duration, offset;
    unsigned starts_with_SAP;
    int i, entries;

    if (track->entry) {
        entries = 1;
        presentation_time = track->start_dts + track->frag_start +
                            track->cluster[0].cts;
        duration = track->end_pts -
                   (track->cluster[0].dts + track->cluster[0].cts);
        starts_with_SAP = track->cluster[0].flags & MOV_SYNC_SAMPLE;

        // pts<0 should be cut away using edts
        if (presentation_time < 0) {
            duration += presentation_time;
            presentation_time = 0;
        }
    } else {
        entries = track->nb_frag_info;
        if (entries <= 0)
            return 0;
        presentation_time = track->frag_info[0].time;
    }

    FUNC6(pb, 0); /* size */
    FUNC8(pb, "sidx");
    FUNC3(pb, 1); /* version */
    FUNC5(pb, 0);
    FUNC6(pb, track->track_id); /* reference_ID */
    FUNC6(pb, track->timescale); /* timescale */
    FUNC7(pb, presentation_time); /* earliest_presentation_time */
    offset_pos = FUNC2(pb);
    FUNC7(pb, 0); /* first_offset (offset to referenced moof) */
    FUNC4(pb, 0); /* reserved */

    FUNC4(pb, entries); /* reference_count */
    for (i = 0; i < entries; i++) {
        if (!track->entry) {
            if (i > 1 && track->frag_info[i].offset != track->frag_info[i - 1].offset + track->frag_info[i - 1].size) {
               FUNC0(NULL, AV_LOG_ERROR, "Non-consecutive fragments, writing incorrect sidx\n");
            }
            duration = track->frag_info[i].duration;
            ref_size = track->frag_info[i].size;
            starts_with_SAP = 1;
        }
        FUNC6(pb, (0 << 31) | (ref_size & 0x7fffffff)); /* reference_type (0 = media) | referenced_size */
        FUNC6(pb, duration); /* subsegment_duration */
        FUNC6(pb, (starts_with_SAP << 31) | (0 << 28) | 0); /* starts_with_SAP | SAP_type | SAP_delta_time */
    }

    end_pos = FUNC2(pb);
    offset = pos + total_sidx_size - end_pos;
    FUNC1(pb, offset_pos, SEEK_SET);
    FUNC7(pb, offset);
    FUNC1(pb, end_pos, SEEK_SET);
    return FUNC9(pb, pos);
}