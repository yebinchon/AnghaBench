#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_9__ {TYPE_2__** streams; TYPE_1__* priv_data; int /*<<< orphan*/ * pb; } ;
struct TYPE_8__ {scalar_t__ duration; void* nb_frames; } ;
struct TYPE_7__ {int num_bytes; scalar_t__ frames_per_packet; scalar_t__ bytes_per_packet; } ;
typedef  TYPE_1__ CafContext ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIndexEntry ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVINDEX_KEYFRAME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int INT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s, int64_t size)
{
    AVIOContext *pb = s->pb;
    AVStream *st      = s->streams[0];
    CafContext *caf   = s->priv_data;
    int64_t pos = 0, ccount, num_packets;
    int i;

    ccount = FUNC5(pb);

    num_packets = FUNC3(pb);
    if (num_packets < 0 || INT32_MAX / sizeof(AVIndexEntry) < num_packets)
        return AVERROR_INVALIDDATA;

    st->nb_frames  = FUNC3(pb); /* valid frames */
    st->nb_frames += FUNC2(pb); /* priming frames */
    st->nb_frames += FUNC2(pb); /* remainder frames */

    st->duration = 0;
    for (i = 0; i < num_packets; i++) {
        FUNC0(s->streams[0], pos, st->duration, 0, 0, AVINDEX_KEYFRAME);
        pos += caf->bytes_per_packet ? caf->bytes_per_packet : FUNC6(pb);
        st->duration += caf->frames_per_packet ? caf->frames_per_packet : FUNC6(pb);
    }

    if (FUNC5(pb) - ccount > size) {
        FUNC1(s, AV_LOG_ERROR, "error reading packet table\n");
        return AVERROR_INVALIDDATA;
    }
    FUNC4(pb, ccount + size - FUNC5(pb));

    caf->num_bytes = pos;
    return 0;
}