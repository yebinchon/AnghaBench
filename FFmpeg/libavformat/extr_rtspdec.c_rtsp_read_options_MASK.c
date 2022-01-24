#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {int /*<<< orphan*/  seq; int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {int /*<<< orphan*/  seq; } ;
typedef  TYPE_1__ RTSPState ;
typedef  TYPE_2__ RTSPMessageHeader ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  RTSP_STATUS_OK ; 
 int FUNC0 (TYPE_3__*,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(AVFormatContext *s)
{
    RTSPState *rt             = s->priv_data;
    RTSPMessageHeader request = { 0 };
    int ret                   = 0;

    /* Parsing headers */
    ret = FUNC0(s, &request, "OPTIONS");
    if (ret)
        return ret;
    rt->seq++;
    /* Send Reply */
    FUNC1(s, RTSP_STATUS_OK,
                    "Public: ANNOUNCE, PAUSE, SETUP, TEARDOWN, RECORD\r\n",
                    request.seq);
    return 0;
}