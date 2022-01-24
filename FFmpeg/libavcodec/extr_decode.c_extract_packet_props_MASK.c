#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  size; } ;
struct TYPE_9__ {TYPE_5__* last_pkt_props; } ;
struct TYPE_8__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVCodecInternal ;

/* Variables and functions */
 int FUNC0 (TYPE_5__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC2(AVCodecInternal *avci, const AVPacket *pkt)
{
    int ret = 0;

    FUNC1(avci->last_pkt_props);
    if (pkt) {
        ret = FUNC0(avci->last_pkt_props, pkt);
        if (!ret)
            avci->last_pkt_props->size = pkt->size; // HACK: Needed for ff_decode_frame_props().
    }
    return ret;
}