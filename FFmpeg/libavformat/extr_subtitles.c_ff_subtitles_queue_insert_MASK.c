#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {int size; scalar_t__ data; scalar_t__ dts; scalar_t__ pts; int /*<<< orphan*/  flags; } ;
struct TYPE_9__ {scalar_t__ nb_subs; TYPE_2__* subs; int /*<<< orphan*/  allocated_size; } ;
typedef  TYPE_1__ FFDemuxSubtitlesQueue ;
typedef  TYPE_2__ AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int INT_MAX ; 
 TYPE_2__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,size_t) ; 
 scalar_t__ FUNC2 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/  const*,size_t) ; 

AVPacket *FUNC4(FFDemuxSubtitlesQueue *q,
                                    const uint8_t *event, size_t len, int merge)
{
    AVPacket *subs, *sub;

    if (merge && q->nb_subs > 0) {
        /* merge with previous event */

        int old_len;
        sub = &q->subs[q->nb_subs - 1];
        old_len = sub->size;
        if (FUNC1(sub, len) < 0)
            return NULL;
        FUNC3(sub->data + old_len, event, len);
    } else {
        /* new event */

        if (q->nb_subs >= INT_MAX/sizeof(*q->subs) - 1)
            return NULL;
        subs = FUNC0(q->subs, &q->allocated_size,
                               (q->nb_subs + 1) * sizeof(*q->subs));
        if (!subs)
            return NULL;
        q->subs = subs;
        sub = &subs[q->nb_subs++];
        if (FUNC2(sub, len) < 0)
            return NULL;
        sub->flags |= AV_PKT_FLAG_KEY;
        sub->pts = sub->dts = 0;
        FUNC3(sub->data, event, len);
    }
    return sub;
}