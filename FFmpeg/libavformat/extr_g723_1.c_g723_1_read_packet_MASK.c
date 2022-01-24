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
struct TYPE_7__ {int* data; int duration; int size; scalar_t__ stream_index; int /*<<< orphan*/  pos; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int* frame_size ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, AVPacket *pkt)
{
    int size, byte, ret;

    pkt->pos = FUNC4(s->pb);
    byte     = FUNC2(s->pb);
    size     = frame_size[byte & 3];

    ret = FUNC0(pkt, size);
    if (ret < 0)
        return ret;

    pkt->data[0]      = byte;
    pkt->duration     = 240;
    pkt->stream_index = 0;

    ret = FUNC3(s->pb, pkt->data + 1, size - 1);
    if (ret < size - 1) {
        FUNC1(pkt);
        return ret < 0 ? ret : AVERROR_EOF;
    }

    return pkt->size;
}