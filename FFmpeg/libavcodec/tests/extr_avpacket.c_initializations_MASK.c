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
typedef  char uint8_t ;
struct TYPE_5__ {int pts; int dts; char* data; int duration; int pos; int /*<<< orphan*/  flags; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  AV_PKT_FLAG_DISCARD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(AVPacket* avpkt)
{
    const static uint8_t* data = "selftest for av_packet_clone(...)";
    int ret = 0;

    /* initialize avpkt */
    FUNC0(avpkt);

    /* set values for avpkt */
    avpkt->pts = 17;
    avpkt->dts = 2;
    avpkt->data = (uint8_t*)data;
    avpkt->size = FUNC2(data);
    avpkt->flags = AV_PKT_FLAG_DISCARD;
    avpkt->duration = 100;
    avpkt->pos = 3;

    ret = FUNC1(avpkt);

    return ret;
}