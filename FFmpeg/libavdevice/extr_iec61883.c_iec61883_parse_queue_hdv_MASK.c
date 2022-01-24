#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct iec61883_data {int /*<<< orphan*/  packets; TYPE_1__* queue_first; int /*<<< orphan*/  mpeg_demux; } ;
struct TYPE_4__ {struct TYPE_4__* buf; struct TYPE_4__* next; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ DVPacket ;
typedef  int /*<<< orphan*/  AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct iec61883_data *dv, AVPacket *pkt)
{
    DVPacket *packet;
    int size;

    while (dv->queue_first) {
        packet = dv->queue_first;
        size = FUNC1(dv->mpeg_demux, pkt, packet->buf,
                                          packet->len);
        dv->queue_first = packet->next;
        FUNC0(&packet->buf);
        FUNC0(&packet);
        dv->packets--;

        if (size > 0)
            return size;
    }

    return -1;
}