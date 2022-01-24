#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_15__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ RTMPPacket ;
typedef  int /*<<< orphan*/  RTMPContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC5 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(URLContext *s, RTMPPacket *pkt)
{
    RTMPContext *rt = s->priv_data;
    int ret = 0;

    //TODO: check for the messages sent for wrong state?
    if (FUNC0(pkt->data, pkt->size, "_error")) {
        if ((ret = FUNC2(s, pkt)) < 0)
            return ret;
    } else if (FUNC0(pkt->data, pkt->size, "_result")) {
        if ((ret = FUNC3(s, pkt)) < 0)
            return ret;
    } else if (FUNC0(pkt->data, pkt->size, "onStatus")) {
        if ((ret = FUNC4(s, pkt)) < 0)
            return ret;
    } else if (FUNC0(pkt->data, pkt->size, "onBWDone")) {
        if ((ret = FUNC1(s, rt)) < 0)
            return ret;
    } else if (FUNC0(pkt->data, pkt->size, "releaseStream") ||
               FUNC0(pkt->data, pkt->size, "FCPublish")     ||
               FUNC0(pkt->data, pkt->size, "publish")       ||
               FUNC0(pkt->data, pkt->size, "play")          ||
               FUNC0(pkt->data, pkt->size, "_checkbw")      ||
               FUNC0(pkt->data, pkt->size, "createStream")) {
        if ((ret = FUNC5(s, pkt)) < 0)
            return ret;
    }

    return ret;
}