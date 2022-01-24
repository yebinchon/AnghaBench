#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_9__ {int /*<<< orphan*/  pb; } ;
struct TYPE_8__ {scalar_t__ stream_index; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EIO ; 
 int NC_VIDEO_FLAG ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s, AVPacket *pkt)
{
    int size;
    int ret;

    uint32_t state=-1;
    while (state != NC_VIDEO_FLAG) {
        if (FUNC4(s->pb))
            return FUNC0(EIO);
        state = (state<<8) + FUNC5(s->pb);
    }

    FUNC5(s->pb);
    size = FUNC6(s->pb);
    FUNC7(s->pb, 9);

    if (size == 0) {
        FUNC2(s, AV_LOG_DEBUG, "Next packet size is zero\n");
        return FUNC0(EAGAIN);
    }

    ret = FUNC1(s->pb, pkt, size);
    if (ret != size) {
        if (ret > 0) FUNC3(pkt);
        return FUNC0(EIO);
    }

    pkt->stream_index = 0;
    return size;
}