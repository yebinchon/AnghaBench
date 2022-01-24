#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_5__ {int nb_streams; int flags; scalar_t__ time; TYPE_1__* tracks; } ;
struct TYPE_4__ {scalar_t__ entry; int track_id; scalar_t__ timescale; int /*<<< orphan*/  track_duration; } ;
typedef  TYPE_2__ MOVMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_ROUND_UP ; 
 int FF_MOV_FLAG_EMPTY_MOOV ; 
 int MOV_TIMESCALE ; 
 scalar_t__ UINT32_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVIOContext *pb, MOVMuxContext *mov)
{
    int max_track_id = 1, i;
    int64_t max_track_len = 0;
    int version;

    for (i = 0; i < mov->nb_streams; i++) {
        if (mov->tracks[i].entry > 0 && mov->tracks[i].timescale) {
            int64_t max_track_len_temp = FUNC0(mov->tracks[i].track_duration,
                                                MOV_TIMESCALE,
                                                mov->tracks[i].timescale,
                                                AV_ROUND_UP);
            if (max_track_len < max_track_len_temp)
                max_track_len = max_track_len_temp;
            if (max_track_id < mov->tracks[i].track_id)
                max_track_id = mov->tracks[i].track_id;
        }
    }
    /* If using delay_moov, make sure the output is the same as if no
     * samples had been written yet. */
    if (mov->flags & FF_MOV_FLAG_EMPTY_MOOV) {
        max_track_len = 0;
        max_track_id  = 1;
    }

    version = max_track_len < UINT32_MAX ? 0 : 1;
    FUNC4(pb, version == 1 ? 120 : 108); /* size */

    FUNC6(pb, "mvhd");
    FUNC1(pb, version);
    FUNC3(pb, 0); /* flags */
    if (version == 1) {
        FUNC5(pb, mov->time);
        FUNC5(pb, mov->time);
    } else {
        FUNC4(pb, mov->time); /* creation time */
        FUNC4(pb, mov->time); /* modification time */
    }
    FUNC4(pb, MOV_TIMESCALE);
    (version == 1) ? FUNC5(pb, max_track_len) : FUNC4(pb, max_track_len); /* duration of longest track */

    FUNC4(pb, 0x00010000); /* reserved (preferred rate) 1.0 = normal */
    FUNC2(pb, 0x0100); /* reserved (preferred volume) 1.0 = normal */
    FUNC2(pb, 0); /* reserved */
    FUNC4(pb, 0); /* reserved */
    FUNC4(pb, 0); /* reserved */

    /* Matrix structure */
    FUNC7(pb, 1, 0, 0, 1, 0, 0);

    FUNC4(pb, 0); /* reserved (preview time) */
    FUNC4(pb, 0); /* reserved (preview duration) */
    FUNC4(pb, 0); /* reserved (poster time) */
    FUNC4(pb, 0); /* reserved (selection time) */
    FUNC4(pb, 0); /* reserved (selection duration) */
    FUNC4(pb, 0); /* reserved (current time) */
    FUNC4(pb, max_track_id + 1); /* Next track id */
    return 0x6c;
}