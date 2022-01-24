#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ queue_len; TYPE_1__* queue; scalar_t__ seq; int /*<<< orphan*/  ic; } ;
struct TYPE_8__ {struct TYPE_8__* buf; struct TYPE_8__* next; int /*<<< orphan*/  len; scalar_t__ seq; } ;
typedef  TYPE_1__ RTPPacket ;
typedef  TYPE_2__ RTPDemuxContext ;
typedef  int /*<<< orphan*/  AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(RTPDemuxContext *s, AVPacket *pkt)
{
    int rv;
    RTPPacket *next;

    if (s->queue_len <= 0)
        return -1;

    if (!FUNC2(s))
        FUNC1(s->ic, AV_LOG_WARNING,
               "RTP: missed %d packets\n", s->queue->seq - s->seq - 1);

    /* Parse the first packet in the queue, and dequeue it */
    rv   = FUNC3(s, pkt, s->queue->buf, s->queue->len);
    next = s->queue->next;
    FUNC0(&s->queue->buf);
    FUNC0(&s->queue);
    s->queue = next;
    s->queue_len--;
    return rv;
}