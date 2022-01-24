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
struct TYPE_8__ {char* playpath; int /*<<< orphan*/  nb_invokes; } ;
struct TYPE_7__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ RTMPPacket ;
typedef  TYPE_2__ RTMPContext ;

/* Variables and functions */
 int /*<<< orphan*/  RTMP_PT_INVOKE ; 
 int /*<<< orphan*/  RTMP_SOURCE_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (TYPE_2__*,TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(URLContext *s, RTMPContext *rt)
{
    RTMPPacket pkt;
    uint8_t *p;
    int ret;

    if ((ret = FUNC3(&pkt, RTMP_SOURCE_CHANNEL, RTMP_PT_INVOKE,
                                     0, 31 + FUNC5(rt->playpath))) < 0)
        return ret;

    p = pkt.data;
    FUNC2(&p, "getStreamLength");
    FUNC1(&p, ++rt->nb_invokes);
    FUNC0(&p);
    FUNC2(&p, rt->playpath);

    return FUNC4(rt, &pkt, 1);
}