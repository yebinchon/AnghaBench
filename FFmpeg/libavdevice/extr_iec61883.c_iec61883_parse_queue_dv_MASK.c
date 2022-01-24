#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct iec61883_data {int /*<<< orphan*/  packets; TYPE_1__* queue_first; int /*<<< orphan*/  dv_demux; } ;
struct TYPE_11__ {int /*<<< orphan*/  data; int /*<<< orphan*/  size; } ;
struct TYPE_10__ {struct TYPE_10__* buf; struct TYPE_10__* next; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ DVPacket ;
typedef  TYPE_2__ AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct iec61883_data *dv, AVPacket *pkt)
{
    DVPacket *packet;
    int size;

    size = FUNC4(dv->dv_demux, pkt);
    if (size > 0)
        return size;

    packet = dv->queue_first;
    if (!packet)
        return -1;

    size = FUNC5(dv->dv_demux, pkt,
                                    packet->buf, packet->len, -1);
    dv->queue_first = packet->next;
    if (size < 0)
        FUNC0(packet->buf);
    FUNC0(packet);
    dv->packets--;

    if (size < 0)
        return -1;

    if (FUNC2(pkt, pkt->data, pkt->size) < 0) {
        FUNC1(&pkt->data);
        FUNC3(pkt);
        return -1;
    }

    return size;
}