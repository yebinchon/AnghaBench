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
struct TYPE_8__ {int /*<<< orphan*/  pb; } ;
struct TYPE_7__ {scalar_t__ stream_index; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC1 (char,char,char,char) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*,int,int,int,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s, AVPacket *pkt)
{
    int ret, size, w, h, unk1, unk2;

    if (FUNC5(s->pb) != FUNC1('M', 'J', 'P', 'G'))
        return FUNC0(EIO); // FIXME

    size = FUNC5(s->pb);

    w = FUNC4(s->pb);
    h = FUNC4(s->pb);

    FUNC6(s->pb, 8); // zero + size (padded?)
    FUNC6(s->pb, 2);
    unk1 = FUNC4(s->pb);
    unk2 = FUNC4(s->pb);
    FUNC6(s->pb, 22); // ASCII timestamp

    FUNC3(s, AV_LOG_DEBUG, "Ingenient packet: size=%d, width=%d, height=%d, unk1=%d unk2=%d\n",
        size, w, h, unk1, unk2);

    ret = FUNC2(s->pb, pkt, size);
    if (ret < 0)
        return ret;
    pkt->stream_index = 0;
    return ret;
}