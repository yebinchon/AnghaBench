#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_7__ {int /*<<< orphan*/  pb; } ;
struct TYPE_6__ {int pos; int /*<<< orphan*/  pts; scalar_t__ stream_index; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, AVPacket *pkt)
{
    int ret, size = FUNC1(s->pb);
    int64_t   pts = FUNC2(s->pb);

    ret = FUNC0(s->pb, pkt, size);
    pkt->stream_index = 0;
    pkt->pts          = pts;
    pkt->pos         -= 12;

    return ret;
}