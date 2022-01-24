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
struct TYPE_7__ {scalar_t__ eof_reached; } ;
struct playlist {int needed; scalar_t__ seek_timestamp; int seek_stream_index; scalar_t__ input_next_requested; int /*<<< orphan*/  input_next; int /*<<< orphan*/  parent; scalar_t__ input_read_done; int /*<<< orphan*/  input; int /*<<< orphan*/  cur_seq_no; int /*<<< orphan*/  seek_flags; TYPE_1__ pb; scalar_t__ broken; } ;
struct TYPE_9__ {TYPE_2__* priv_data; } ;
struct TYPE_8__ {int n_playlists; scalar_t__ cur_timestamp; struct playlist** playlists; } ;
typedef  TYPE_2__ HLSContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVSEEK_FLAG_ANY ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct playlist*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct playlist*) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s, int first)
{
    HLSContext *c = s->priv_data;
    int i, changed = 0;
    int cur_needed;

    /* Check if any new streams are needed */
    for (i = 0; i < c->n_playlists; i++) {
        struct playlist *pls = c->playlists[i];

        cur_needed = FUNC2(c->playlists[i]);

        if (pls->broken) {
            continue;
        }
        if (cur_needed && !pls->needed) {
            pls->needed = 1;
            changed = 1;
            pls->cur_seq_no = FUNC3(c, pls);
            pls->pb.eof_reached = 0;
            if (c->cur_timestamp != AV_NOPTS_VALUE) {
                /* catch up */
                pls->seek_timestamp = c->cur_timestamp;
                pls->seek_flags = AVSEEK_FLAG_ANY;
                pls->seek_stream_index = -1;
            }
            FUNC0(s, AV_LOG_INFO, "Now receiving playlist %d, segment %d\n", i, pls->cur_seq_no);
        } else if (first && !cur_needed && pls->needed) {
            FUNC1(pls->parent, &pls->input);
            pls->input_read_done = 0;
            FUNC1(pls->parent, &pls->input_next);
            pls->input_next_requested = 0;
            pls->needed = 0;
            changed = 1;
            FUNC0(s, AV_LOG_INFO, "No longer receiving playlist %d\n", i);
        }
    }
    return changed;
}