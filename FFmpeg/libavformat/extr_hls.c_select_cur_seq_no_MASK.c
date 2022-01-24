#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct playlist {scalar_t__ last_load_time; scalar_t__ start_seq_no; scalar_t__ n_segments; scalar_t__ finished; int /*<<< orphan*/  url; } ;
struct TYPE_5__ {scalar_t__ cur_timestamp; scalar_t__ cur_seq_no; scalar_t__ live_start_index; int /*<<< orphan*/  first_packet; } ;
typedef  TYPE_1__ HLSContext ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (struct playlist*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct playlist*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,struct playlist*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(HLSContext *c, struct playlist *pls)
{
    int seq_no;

    if (!pls->finished && !c->first_packet &&
        FUNC2() - pls->last_load_time >= FUNC3(pls))
        /* reload the playlist since it was suspended */
        FUNC5(c, pls->url, pls, NULL);

    /* If playback is already in progress (we are just selecting a new
     * playlist) and this is a complete file, find the matching segment
     * by counting durations. */
    if (pls->finished && c->cur_timestamp != AV_NOPTS_VALUE) {
        FUNC4(c, pls, c->cur_timestamp, &seq_no);
        return seq_no;
    }

    if (!pls->finished) {
        if (!c->first_packet && /* we are doing a segment selection during playback */
            c->cur_seq_no >= pls->start_seq_no &&
            c->cur_seq_no < pls->start_seq_no + pls->n_segments)
            /* While spec 3.4.3 says that we cannot assume anything about the
             * content at the same sequence number on different playlists,
             * in practice this seems to work and doing it otherwise would
             * require us to download a segment to inspect its timestamps. */
            return c->cur_seq_no;

        /* If this is a live stream, start live_start_index segments from the
         * start or end */
        if (c->live_start_index < 0)
            return pls->start_seq_no + FUNC0(pls->n_segments + c->live_start_index, 0);
        else
            return pls->start_seq_no + FUNC1(c->live_start_index, pls->n_segments - 1);
    }

    /* Otherwise just start on the first segment. */
    return pls->start_seq_no;
}