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
struct TYPE_3__ {int nb_index_entries; int /*<<< orphan*/ * stream_offset_entries; void** flag_entries; void** temporal_offset_entries; } ;
typedef  TYPE_1__ MXFIndexTableSegment ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (void***) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(AVIOContext *pb, MXFIndexTableSegment *segment)
{
    int i, length;

    segment->nb_index_entries = FUNC5(pb);

    length = FUNC5(pb);
    if(segment->nb_index_entries && length < 11)
        return AVERROR_INVALIDDATA;

    if (!(segment->temporal_offset_entries=FUNC1(segment->nb_index_entries, sizeof(*segment->temporal_offset_entries))) ||
        !(segment->flag_entries          = FUNC1(segment->nb_index_entries, sizeof(*segment->flag_entries))) ||
        !(segment->stream_offset_entries = FUNC1(segment->nb_index_entries, sizeof(*segment->stream_offset_entries)))) {
        FUNC2(&segment->temporal_offset_entries);
        FUNC2(&segment->flag_entries);
        return FUNC0(ENOMEM);
    }

    for (i = 0; i < segment->nb_index_entries; i++) {
        if(FUNC3(pb))
            return AVERROR_INVALIDDATA;
        segment->temporal_offset_entries[i] = FUNC4(pb);
        FUNC4(pb);                                        /* KeyFrameOffset */
        segment->flag_entries[i] = FUNC4(pb);
        segment->stream_offset_entries[i] = FUNC6(pb);
        FUNC7(pb, length - 11);
    }
    return 0;
}