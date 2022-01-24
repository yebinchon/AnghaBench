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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  URLContext ;
struct TYPE_5__ {int size; int /*<<< orphan*/ * data; scalar_t__ timestamp; } ;
typedef  TYPE_1__ RTMPPacket ;
typedef  int /*<<< orphan*/  RTMPContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RTMP_NETWORK_CHANNEL ; 
 int /*<<< orphan*/  RTMP_PT_USER_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(URLContext *s, RTMPContext *rt, RTMPPacket *ppkt)
{
    RTMPPacket pkt;
    uint8_t *p;
    int ret;

    if (ppkt->size < 6) {
        FUNC1(s, AV_LOG_ERROR, "Too short ping packet (%d)\n",
               ppkt->size);
        return AVERROR_INVALIDDATA;
    }

    if ((ret = FUNC4(&pkt, RTMP_NETWORK_CHANNEL,RTMP_PT_USER_CONTROL,
                                     ppkt->timestamp + 1, 6)) < 0)
        return ret;

    p = pkt.data;
    FUNC2(&p, 7); // PingResponse
    FUNC3(&p, FUNC0(ppkt->data+2));

    return FUNC5(rt, &pkt, 0);
}