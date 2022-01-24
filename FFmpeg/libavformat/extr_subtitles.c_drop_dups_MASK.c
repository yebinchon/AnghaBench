#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ pts; scalar_t__ duration; scalar_t__ stream_index; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int nb_subs; TYPE_2__* subs; } ;
typedef  TYPE_1__ FFDemuxSubtitlesQueue ;
typedef  TYPE_2__ AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *log_ctx, FFDemuxSubtitlesQueue *q)
{
    int i, drop = 0;

    for (i = 1; i < q->nb_subs; i++) {
        const int last_id = i - 1 - drop;
        const AVPacket *last = &q->subs[last_id];

        if (q->subs[i].pts        == last->pts &&
            q->subs[i].duration   == last->duration &&
            q->subs[i].stream_index == last->stream_index &&
            !FUNC3(q->subs[i].data, last->data)) {

            FUNC1(&q->subs[i]);
            drop++;
        } else if (drop) {
            q->subs[last_id + 1] = q->subs[i];
            FUNC2(&q->subs[i], 0, sizeof(q->subs[i])); // for safety
        }
    }

    if (drop) {
        q->nb_subs -= drop;
        FUNC0(log_ctx, AV_LOG_WARNING, "Dropping %d duplicated subtitle events\n", drop);
    }
}