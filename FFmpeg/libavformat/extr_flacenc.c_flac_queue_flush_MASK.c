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
struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  queue_end; scalar_t__ queue; } ;
typedef  TYPE_1__ FlacMuxerContext ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s)
{
    FlacMuxerContext *c = s->priv_data;
    AVPacket pkt;
    int ret, write = 1;

    ret = FUNC2(s);
    if (ret < 0)
        write = 0;

    while (c->queue) {
        FUNC1(&c->queue, &c->queue_end, &pkt);
        if (write && (ret = FUNC3(s, &pkt)) < 0)
            write = 0;
        FUNC0(&pkt);
    }
    return ret;
}