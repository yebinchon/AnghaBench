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
struct TYPE_8__ {int /*<<< orphan*/  client_buffer_time; int /*<<< orphan*/  stream_id; } ;
struct TYPE_7__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ RTMPPacket ;
typedef  TYPE_2__ RTMPContext ;

/* Variables and functions */
 int /*<<< orphan*/  RTMP_NETWORK_CHANNEL ; 
 int /*<<< orphan*/  RTMP_PT_USER_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(URLContext *s, RTMPContext *rt)
{
    RTMPPacket pkt;
    uint8_t *p;
    int ret;

    if ((ret = FUNC2(&pkt, RTMP_NETWORK_CHANNEL, RTMP_PT_USER_CONTROL,
                                     1, 10)) < 0)
        return ret;

    p = pkt.data;
    FUNC0(&p, 3); // SetBuffer Length
    FUNC1(&p, rt->stream_id);
    FUNC1(&p, rt->client_buffer_time);

    return FUNC3(rt, &pkt, 0);
}