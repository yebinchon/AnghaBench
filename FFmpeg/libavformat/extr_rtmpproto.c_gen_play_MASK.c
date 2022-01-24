#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  URLContext ;
struct TYPE_8__ {char* playpath; int nb_invokes; int live; int /*<<< orphan*/  stream_id; } ;
struct TYPE_7__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  extra; } ;
typedef  TYPE_1__ RTMPPacket ;
typedef  TYPE_2__ RTMPContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  RTMP_PT_INVOKE ; 
 int /*<<< orphan*/  RTMP_SOURCE_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (TYPE_2__*,TYPE_1__*,int) ; 
 scalar_t__ FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(URLContext *s, RTMPContext *rt)
{
    RTMPPacket pkt;
    uint8_t *p;
    int ret;

    FUNC0(s, AV_LOG_DEBUG, "Sending play command for '%s'\n", rt->playpath);

    if ((ret = FUNC4(&pkt, RTMP_SOURCE_CHANNEL, RTMP_PT_INVOKE,
                                     0, 29 + FUNC6(rt->playpath))) < 0)
        return ret;

    pkt.extra = rt->stream_id;

    p = pkt.data;
    FUNC3(&p, "play");
    FUNC2(&p, ++rt->nb_invokes);
    FUNC1(&p);
    FUNC3(&p, rt->playpath);
    FUNC2(&p, rt->live * 1000);

    return FUNC5(rt, &pkt, 1);
}