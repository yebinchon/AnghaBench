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
struct TYPE_7__ {scalar_t__ packet_size_left; int packet_segments; scalar_t__ packet_time_start; } ;
struct TYPE_6__ {int /*<<< orphan*/  pb; TYPE_2__* priv_data; } ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_1__ AVFormatContext ;
typedef  TYPE_2__ ASFContext ;

/* Variables and functions */
 scalar_t__ FRAME_HEADER_SIZE ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, AVPacket *pkt)
{
    ASFContext *asf = s->priv_data;

    for (;;) {
        int ret;

        /* parse cached packets, if any */
        if ((ret = FUNC1(s, s->pb, pkt)) <= 0)
            return ret;
        if ((ret = FUNC0(s, s->pb)) < 0)
            FUNC2(asf->packet_size_left < FRAME_HEADER_SIZE ||
                   asf->packet_segments < 1);
        asf->packet_time_start = 0;
    }
}