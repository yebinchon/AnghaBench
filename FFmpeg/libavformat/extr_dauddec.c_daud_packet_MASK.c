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
struct TYPE_7__ {int /*<<< orphan*/ * pb; } ;
struct TYPE_6__ {scalar_t__ stream_index; } ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s, AVPacket *pkt) {
    AVIOContext *pb = s->pb;
    int ret, size;
    if (FUNC2(pb))
        return FUNC0(EIO);
    size = FUNC3(pb);
    FUNC3(pb); // unknown
    ret = FUNC1(pb, pkt, size);
    pkt->stream_index = 0;
    return ret;
}