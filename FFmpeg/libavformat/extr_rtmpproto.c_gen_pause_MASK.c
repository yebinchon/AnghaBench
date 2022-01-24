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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  URLContext ;
struct TYPE_8__ {int /*<<< orphan*/  stream_id; } ;
struct TYPE_7__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  extra; } ;
typedef  TYPE_1__ RTMPPacket ;
typedef  TYPE_2__ RTMPContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  RTMP_PT_INVOKE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char*) ; 
 int FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (TYPE_2__*,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC7(URLContext *s, RTMPContext *rt, int pause, uint32_t timestamp)
{
    RTMPPacket pkt;
    uint8_t *p;
    int ret;

    FUNC0(s, AV_LOG_DEBUG, "Sending pause command for timestamp %d\n",
           timestamp);

    if ((ret = FUNC5(&pkt, 3, RTMP_PT_INVOKE, 0, 29)) < 0)
        return ret;

    pkt.extra = rt->stream_id;

    p = pkt.data;
    FUNC4(&p, "pause");
    FUNC3(&p, 0); //no tracking back responses
    FUNC2(&p); //as usual, the first null param
    FUNC1(&p, pause); // pause or unpause
    FUNC3(&p, timestamp); //where we pause the stream

    return FUNC6(rt, &pkt, 1);
}