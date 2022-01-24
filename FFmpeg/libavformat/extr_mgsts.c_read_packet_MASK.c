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
typedef  int uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/ * pb; } ;
struct TYPE_6__ {int pos; int duration; } ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, AVPacket *pkt)
{
    AVIOContext *pb = s->pb;
    uint32_t chunk_size, payload_size;
    int ret;

    if (FUNC2(pb))
        return AVERROR_EOF;

    FUNC4(pb, 4);
    chunk_size = FUNC3(pb);
    FUNC4(pb, 4);
    payload_size = FUNC3(pb);

    if (chunk_size < payload_size + 16)
        return FUNC0(EIO);

    ret = FUNC1(pb, pkt, payload_size);
    if (ret < 0)
        return ret;

    pkt->pos -= 16;
    pkt->duration = 1;
    FUNC4(pb, chunk_size - (ret + 16));

    return ret;
}