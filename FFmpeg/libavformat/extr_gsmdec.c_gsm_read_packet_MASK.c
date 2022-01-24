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
struct TYPE_7__ {int pos; int duration; int pts; scalar_t__ stream_index; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIO ; 
 int GSM_BLOCK_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s, AVPacket *pkt)
{
    int ret, size;

    size = GSM_BLOCK_SIZE;

    pkt->pos = FUNC3(s->pb);
    pkt->stream_index = 0;

    ret = FUNC1(s->pb, pkt, size);
    if (ret < GSM_BLOCK_SIZE) {
        FUNC2(pkt);
        return ret < 0 ? ret : FUNC0(EIO);
    }
    pkt->duration = 1;
    pkt->pts      = pkt->pos / GSM_BLOCK_SIZE;

    return 0;
}